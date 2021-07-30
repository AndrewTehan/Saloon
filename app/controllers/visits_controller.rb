class VisitsController < ApplicationController
    def index
        @all_visits = Visit.all
        @user = User.find(params[:user_id])
        @visits = @user.visits
    end

    def new
        @user = User.find(params[:user_id])
    end

    def create
        @user = User.find_by(id: params[:admin_id])
        @visit = @user.visits.create(visit_params)
        redirect_to user_path(@user)
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
        @visit = @user.visits.find(params[:id])
        @visit.destroy
        redirect_to user_visits_path(@user)
    end

    private
    def visit_params
        params.require(:visit).permit(:client_email, :date, :order, :addition)
    end
end