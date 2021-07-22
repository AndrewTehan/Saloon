# frozen_string_literal: true

class UsersController < ApplicationController

  def find_user
    return User.find_by(id: params[:id])
  end

  def index
    @users = User.all
  end

  def show
    @user = find_user()
    redirect_to :users unless @user
  end

  def destroy
    @user = find_user()
    return redirect_to :users unless @user
    if current_user.is_a?(Admin) || current_user == @user
      reset_session if current_user == @user
      @user.destroy
      redirect_to :users
    end
  end

  def me
    @me = current_user
  end

  def edit
    @user = find_user()
    redirect_to users_path unless @user == current_user || current_user.is_a?(Admin)
  end

  def update    
    @user = find_user()
    if @user.update user_params
      redirect_to user_path(@user, id: @user.id)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(@user.is_a?(Admin) ? :admin : :user).permit(:first_name, :last_name, :email, :phone_number)
  end

end
