class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :delete]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    redirect_to @user
  else
    render :edit
    end
  end

  def destroy 
    User.find(params[:id]).destroy
    redirect_to new_user_path
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :zip_code, :rules, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
