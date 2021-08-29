class VisitsController < ApplicationController
  def index
    @all_visits = Visit.all
    @user = User.find(params[:user_id])
    @visits = @user.visits
  end

  def admin_index
    @visits = Visit.all
  end

  def change_status
    @visit = Visit.find(params[:visit_id])
    case @visit.state
    when 'sent'
      @visit.accepted!
    when 'confirmed'
      @visit.finished!
    end
    redirect_to user_visits_path(current_user)
  end

  def new
    @user = current_user
    @masters = Master.all
    @services = Service.all
  end

  def create
    @user = User.find_by(email: params[:client_email])
    if !@user.nil?
      @visit = @user.visits.create(visit_params)
      redirect_to user_visits_path(@user)
    else
      redirect_to new_user_visit_path(current_user), notice: 'Error'
    end
  end

  def edit
    @user = User.find_by(id: params[:user_id])
    @visit = Visit.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:user_id])
    @visit = Visit.find_by(id: params[:id])
    @visit.update(visit_params)

    redirect_to user_visits_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @visit = Visit.find(params[:id])
    @visit.destroy
    redirect_to user_visits_path(@user)
  end

  private

  def visit_params
    params.require(:visit).permit(:date, :addition, :master_id, service_visit_attributes: :service_id)
  end
end
