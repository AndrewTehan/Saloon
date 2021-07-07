# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
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


  def edit
    redirect_to new_user_session_path unless user_signed_in?
    @user = current_user
  end

  def update
    
    @user = User.find(params[:id])
    
    if @user.update user_params
      redirect_to me_path
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
  end

end
