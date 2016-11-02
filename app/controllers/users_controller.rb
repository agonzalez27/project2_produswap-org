class UsersController < ApplicationController
skip_before_filter :require_login

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
     p "look here"
     p current_user
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to post_page_path
    end
  end

  def create
    @user = User.new(user_params)
    @user.zip_code = session[:zip_code]
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to post_page_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to post_page_path
    end
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
    @user = User.find(params[:id])
    if current_user == @user
      @user.destroy
      redirect_to new_user_path
    else
      redirect_to current_user
    end
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :zip_code, :rules, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
