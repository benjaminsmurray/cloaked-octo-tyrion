class CommentsController < ApplicationController
def create
  @welcome_page = WelcomePage.find(params[:welcome_page_id])
  @comment = @welcome_page.comments.create(params[:comment])
  redirect_to(welcome_page_path(@welcome_page))
end
def destroy
  @welcome_page = WelcomePage.find(params[:welcome_page_id])
  @comment = @welcome_page.comments.find(params[:id])
  @comment.destroy
  redirect_to(welcome_page_path(@welcome_page))
 
end

end
