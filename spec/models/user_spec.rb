# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do

  shared_examples "Raises validation error" do
    it "will raise validation error" do
      expect{ user }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe "user_factory" do
    context "with invalid first_name" do
      let(:first_name){ "" }
      let(:user){ FactoryBot.create(:user, first_name: first_name) }
      include_examples "Raises validation error"
    end

    context "with invalid last_name" do
      let(:last_name){ "" }
      let(:user){ FactoryBot.create(:user, last_name: last_name) }
      include_examples "Raises validation error"
    end

    context "with invalid phone_number" do
      let(:phone_number){ "" }
      let(:user){ FactoryBot.create(:user, phone_number: phone_number) }
      include_examples "Raises validation error"
    end

    context "with invalid email" do
      let(:email){ "" }
      let(:email){ FactoryBot.create(:user, email: email) }
      include_examples "Raises validation error"
    end    
  end
end
