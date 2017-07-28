class StaticPagesController < ApplicationController
  def index
    @products = product = Product.all

    return if product
    flash[:info] = t "khongtimthay"
    redirect_to root_path
  end
end
