class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:login][:email])
    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to post_page_path
    else
      render :new
    end
  end

  def destroy
  session.delete(:user_id)
  redirect_to login_path
  end

  def landing
  end

  def create_zip
    # session[:zip_code] = params[:zip][:zip_code]
    # redirect_to new_user_path
  end

end
