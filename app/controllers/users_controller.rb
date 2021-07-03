class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    reset_session if current_user == @user
    @user.destroy
    redirect_to :users
  end

  def me    
    if user_signed_in? == false
      redirect_to new_user_session_path
    end
    @me = current_user
  end
end
