class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    redirect_to :users unless @user
  end

  def destroy
    @user = User.find_by(id: params[:id])
    return redirect_to :users unless @user
    reset_session if current_user == @user
    @user.destroy
    redirect_to :users
  end

  def me    
    redirect_to new_user_session_path unless user_signed_in?
    @me = current_user
  end
end
