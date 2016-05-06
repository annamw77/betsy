class Product < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :order_items

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :stock, :user_id, presence: true, numericality: { only_integer: true }
end
