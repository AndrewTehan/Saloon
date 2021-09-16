require 'rails_helper'

RSpec.describe VisitsController, type: :controller do
  before :each do
    user.confirm
    sign_in user
  end
  
  let(:user) { FactoryBot.create(:user) }
  let(:admin) { FactoryBot.create(:user, type: Admin) }
  let(:params) { { locale: I18n.locale, client_id: user.id } }

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index, params: params
      expect(response.status).to eq(200)
    end

    it 'renders index' do
      get :index, params: params
      expect(response).to render_template('index')
    end
  end

  describe 'GET admin_ index' do
    it 'has a 200 status code' do
      get :admin_index, params: params
      expect(response.status).to eq(200)
    end

    it 'renders index' do
      get :admin_index, params: params
      expect(response).to render_template('admin_index')
    end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new, params: params
      expect(response.status).to eq(200)
    end

    it 'renders new' do
      get :new, params: params
      expect(response).to render_template('new')
    end
  end

  describe 'create visit' do
    let(:visit) { FactoryBot.create(:visit, client: user) }
    let(:params) do { locale: I18n.locale, client_id: visit.client.id,
                      visit: { client_id: visit.client.id,
                              service_id: visit.service.id,
                              master_id: visit.master.id,
                              addition: visit.addition,
                              date: visit.date,
                              service_visit_attributes: { service_id: visit.service.id } } }
    end

    it 'has a 302 status code' do
      post :create, params: params
      expect(response.status).to eq(302)
    end
  end

  describe 'DELETE visit' do
    let(:visit) { FactoryBot.create(:visit, client: user) }
    let(:params) do { locale: I18n.locale,  id: visit.id, client_id: visit.client.id }
    end

    it 'has a 302 status code' do
      delete :destroy, params: params
      expect(response.status).to eq(302)
    end
  end
end
