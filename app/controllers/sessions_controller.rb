class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      log_in @user
      flash[:success] = "Welcome! You are logged-in as #{@user.name}."
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    log_out
    flash[:success] = "You've successfully logged out. Welcome back!"
    redirect_to root_path
  end
end
