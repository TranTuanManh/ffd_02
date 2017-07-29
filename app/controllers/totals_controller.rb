class TotalsController < ApplicationController
  def index
  	@user = User.find_by id: params[:id]

  	if @user
  		@orders = @user.orders.sort_by_created_at
  	else
  		flash[:info] = "Không có dữ liệu!"
  		redirect_to root_path
  	end
  end
end
