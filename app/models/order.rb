class Order < ApplicationRecord
  has_many :productorders, class_name: ProductOrder.name
  has_many :products, through: :productorders
  has_one :payment

  def add_product product, quant
  	products << product
  	productorders.find_by(product_id: product.id).update_quant_price product, quant
  end

end
