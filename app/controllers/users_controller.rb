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
    if current_user.is_a?(Admin) || current_user == @user
      reset_session if current_user == @user
      @user.destroy
      redirect_to :users
    end
  end

  def me
    redirect_to new_user_session_path unless user_signed_in?
    @me = current_user
  end

  def edit
    @user = User.find_by(id: params[:id])
    unless current_user
      redirect_to new_user_session_path
    else
      redirect_to users_path unless @user == current_user || current_user.is_a?(Admin)
    end
  end

  def update    
    @user = User.find(params[:id])
    
    if @user.update user_params
      redirect_to user_path(@user, id: @user.id)
    else
      render :edit
    end
  end

  def user_params
    params.require(@user.is_a?(Admin) ? :admin : :user).permit(:first_name, :last_name, :email, :phone_number)
  end

end
