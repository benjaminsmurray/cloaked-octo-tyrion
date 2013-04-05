class UserController < ApplicationController
  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.json { render jason: @user}
    end
  end

  def index
    @user = User.new
    respond_to do |format|
      format.html
      format.json { render jason: @user}
    end
  end
  def auth
    if params[:user]
      @exists = User.exists?(:username => params[:user][:username])
    end
      respond_to do |format|
      if @exists
        flash[:state] = :success
        flash[:notice] = "Login Successful!"
        format.html { redirect_to loggedin_path}
        format.json { render json: @user, location:@user}
      else
        flash[:state] = :error
        flash[:notice] = "Login Failed!"
        format.html {redirect_to login_path}
        format.json { render json: @user.errors}
      end
      end
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
