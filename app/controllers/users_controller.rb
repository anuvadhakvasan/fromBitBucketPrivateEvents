class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'new user created!'
      log_in @user
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    #@events = @user.events
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
