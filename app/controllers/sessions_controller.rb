class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    @user=User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:username] = params[:username]
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :username
    redirect_to root_path
  end


end
