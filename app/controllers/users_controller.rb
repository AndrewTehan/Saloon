# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def destroy
    @user = find_user
    return redirect_to :users unless @user

    if current_user.is_a?(Admin) || current_user == @user
      reset_session if current_user == @user
      @user.destroy
      redirect_to :user
    end
  end

  def edit
    @user = current_user
    redirect_to users_path unless @user == current_user || current_user.is_a?(Admin)
  end

  def update
    @user = find_user
    if @user.update user_params
      redirect_to :root
    else
      render :edit
    end
  end

  def team
    @masters = Master.all
  end

  def services
    @services = Service.all
  end

  def clients
    @clients = User.all
  end

  private
  def user_params
    @required_key = @user.is_a?(Admin) ? :admin : :client
    params.require(@required_key).permit(:first_name, :last_name, :email, :phone_number)
  end

  def find_user
    User.find(params[:id]) 
  end
end
