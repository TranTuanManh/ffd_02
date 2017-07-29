class Order < ApplicationRecord
  has_many :productorders, class_name: ProductOrder.name
  has_many :products, through: :productorders
  has_one :payment

  scope :sort_by_created_at, ->{order created_at: :desc}

  def add_product product, quant
  	products << product
  	productorders.find_by(product_id: product.id).update_quant_price product, quant
  end

  def total
  	sum = 0
  	productorders.each do |productorder|
  		sum += productorder.unitprice*productorder.quantity
  	end
  	sum
  end

end
