class RatingsController < ApplicationController
  def create
  	respond_to do |format|
  	id = params[:product]
  	  score = params[:score]
  	  product = Product.find_by id: id
  	  current_user.rating product, score
      format.js {render json: 1}
  	end
  end

  def show
  end
end
