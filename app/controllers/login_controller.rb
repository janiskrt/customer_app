# login controller creats and destroys session
class LoginController < ApplicationController
  def index
  end

  def create
    @user = User.find_by_email(params[:login][:email])
    if @user && @user.authenticate(params[:login][:password])
      session[:user_id] = @user.id
      redirect_to '/users'
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
