class SessionController < ApplicationController
include SessionHelper
  def create
  user = User.find_by_username(params[:session][:username])
  if user && user.authenticate(params[:session][:password])
    flash[:state] = :success
    flash[:notice] = "Login Successful"
    sign_in user
    redirect_to my_events_handler_path
  else
    flash[:state] = :error
    flash[:notice] = "Login Failed!"
    redirect_to login_path
  end
end

def new
end
def index
  user = User.find_by_remember_token(cookies[:remember_token])
  if user
    sign_in user
  else
    redirect_to login_path
  end
end
def destroy
  sign_out
  redirect_to root_url
  end
end
