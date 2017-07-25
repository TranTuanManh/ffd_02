class Order < ApplicationRecord
  has_many :productorders, class_name: ProductOrder.name
  has_many :products, through: :productorders
  has_one :payment
end
