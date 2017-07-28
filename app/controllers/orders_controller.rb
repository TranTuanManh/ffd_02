class OrdersController < ApplicationController
  def show
  end

  def create
  	@order = current_user.orders.build
  	if @order.save
  	  product = Product.find_by id: params[:product_id]
      quant = params[:quant]["1"]
  	  @order.add_product product, quant
  	end
  end

  def destroy
  end
end
