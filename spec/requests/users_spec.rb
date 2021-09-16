require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before :each do
    user.confirm
    sign_in user
  end
  
  let(:user) { FactoryBot.create(:user) }
  let(:params) { { locale: I18n.locale, id: user.id } }

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

  describe 'GET team' do
    it 'has a 200 status code' do
      get :team, params: params
      expect(response.status).to eq(200)
    end

    it 'renders team' do
      get :team, params: params
      expect(response).to render_template('team')
    end
  end

  describe 'GET services' do
    it 'has a 200 status code' do
      get :services, params: params
      expect(response.status).to eq(200)
    end

    it 'renders services' do
      get :services, params: params
      expect(response).to render_template('services')
    end
  end

  describe 'DELETE user' do
    it 'has a 200 status code' do
      delete :destroy, params: params
      expect(response.status).to eq(302)
    end
  end

  describe 'GET edit' do
    it 'has a 302 status code' do
      get :edit, params: params
      expect(response.status).to eq(200)
    end

    it 'renders edit' do
      get :edit, params: params
      expect(response).to render_template('edit')
    end
  end
end