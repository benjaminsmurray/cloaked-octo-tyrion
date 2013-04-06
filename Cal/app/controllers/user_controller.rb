class UserController < ApplicationController
  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.json { render jason: @user}
    end
  end

  def index
    end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        flash[:state] = :success
        flash[:notice] = "Registration Successful! Please login below"
        format.html { redirect_to login_path}
        format.json { render json: @user, location:@user}
      else
        flash[:state] = :error
        flash[:notice] = "Registration Failed!"
        format.html {redirect_to register_path}
        format.json { render json: @user.errors}
      end
    end
   
  end
end
