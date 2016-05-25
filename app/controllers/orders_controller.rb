class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: session[:order_id])
    render :show
  end

  def edit
    @order = Order.find_by(id: session[:order_id])
    @user = User.find_by(id: session[:user_id])
    render :edit
  end

  def update
    @order = Order.find_by(id: session[:order_id])
    @order.assign_attributes(order_update_params[:order])
    @order.assign_attributes(order_state: "paid")
    @order.last_four_cc = params[:order][:last_four_cc][-4..-1]
    if @order.save
      reset_cart
      redirect_to shipping_path
    else
      @user = User.find_by(id: session[:user_id])
      render :edit
    end
  end

  def getrates
    @order = Order.find_by(id: session[:order_id])
    params[:order][:origin]= { state: "WA", zip: 98112, city: "Seattle" }
    params[:order][:orderitems] = @order.hashify
    @params = params.to_json

    @results = HTTParty.post("http://localhost:3000/shipping/rates",
    :body => @params,
     :headers => { 'Content-Type' => 'application/json' }
    )
  end

  def updateshipping
    info_array = params["order"]["shipping_method"].split
    cost = (info_array.pop)/100.0
    method = info_array.join

    @order = Order.find_by(id: session[:order_id])
    @order.update(shipping_method: method, shipping_cost: cost)
  end

  private

  def order_update_params
    params.permit(order: [:name, :email, :address, :city, :state, :zip, :card_name, :cc_cvv, :billing_zip, :cc_exp_month, :cc_exp_year])
  end
end
