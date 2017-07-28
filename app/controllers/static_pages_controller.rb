class StaticPagesController < ApplicationController
  def index
    @products = Product.all

    return if @products
    flash[:info] = t "khongtimthay"
    redirect_to root_path
  end
end
