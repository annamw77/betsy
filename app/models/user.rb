class User < ActiveRecord::Base
  has_many :products
  has_many :orders
  has_many :reviews
end