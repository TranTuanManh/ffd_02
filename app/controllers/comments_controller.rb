class CommentsController < ApplicationController
  def create
  	@comment = current_user.comments.build(comment_params);
  	if @comment.save
  	  respond_to do |format|
        format.html {redirect_to @comment.product}
        format.js
      end
  	end
  end

  def destroy
  	  @comment = current_user.comments.find_by id: params[:id]
  	  @comment.destroy
  	  respond_to do |format|
        format.html {redirect_to root_path}
        format.js
      end
  end

  private

  def comment_params
  	params.require(:comment).permit :product_id, :content
  end
end
