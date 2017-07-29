class OrdersController < ApplicationController
  def show
    @products = Order.find_by(id: params[:id]).productorders;

    respond_to do |f|
      f.js {render layout: false}
    end
  end

  def create
  	@order = current_user.orders.build
  	if @order.save
  	  product = Product.find_by id: params[:product_id]
      quant = params[:quant]["1"]
  	  @order.add_product product, quant
      redirect_to orders_user_path current_user
  	end
  end

  def destroy
  end
end
