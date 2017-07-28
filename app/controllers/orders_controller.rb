class OrdersController < ApplicationController
  attr_reader :order

  def show; end

  def create
    order = current_user.orders.build
    return unless order.save
    product = Product.find_by id: params[:product_id]
    order.add_product product, params[:quant]["1"]
  end

  def destroy; end
end
