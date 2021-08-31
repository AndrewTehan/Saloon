class VisitsController < ApplicationController
  def index
    @all_visits = Visit.all
    @client = Client.find(params[:client_id])
    @visits = @client.visits
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
    @client = current_user
    @masters = Master.all
    @services = Service.all
  end

  def create
    @visit = current_user.visits.build(visit_params)
    if @visit.valid?
      @visit.save
      redirect_to client_visits_path(current_user)
    else
      redirect_to new_client_visit_path(current_user), flash: {errors: @visit.errors.full_messages}
    end
  end

  def edit
    @client = Client.find_by(id: params[:client_id])
    @visit = Visit.find_by(id: params[:id])
  end

  def update
    @client = Client.find_by(id: params[:client_id])
    @visit = Visit.find_by(id: params[:id])
    @visit.update(visit_params)

    redirect_to user_visits_path(@client)
  end

  def destroy
    @client = Client.find(params[:client_id])
    @visit = Visit.find(params[:id])
    @visit.destroy
    redirect_to user_visits_path(@client)
  end

  private

  def visit_params
    params.require(:visit).permit(:date, :addition, :master_id, service_visit_attributes: :service_id)
  end
end
