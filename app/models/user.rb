class User < ApplicationRecord
  has_many :payments
  has_many :comments
  has_many :products
  has_many :orders
  has_many :ratings
end
