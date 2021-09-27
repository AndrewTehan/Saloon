# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do

  shared_examples "Raises validation error" do
    it "will raise validation error" do
      expect{ user }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe "user factory" do
    context "with blank first_name" do
      let(:first_name){ "" }
      let(:user){ FactoryBot.create(:user, first_name: first_name) }
      include_examples "Raises validation error"
    end

    context "with blank last_name" do
      let(:last_name){ "" }
      let(:user){ FactoryBot.create(:user, last_name: last_name) }
      include_examples "Raises validation error"
    end

    context "with blank phone_number" do
      let(:phone_number){ "" }
      let(:user){ FactoryBot.create(:user, phone_number: phone_number) }
      include_examples "Raises validation error"
    end

    context "with blank email" do
      let(:email){ "" }
      let(:user){ FactoryBot.create(:user, email: email) }
      include_examples "Raises validation error"
    end    

    context "with nil first_name" do
      let(:user){ FactoryBot.create(:user, first_name: nil) }
      include_examples "Raises validation error"
    end

    context "with nil last_name" do
      let(:user){ FactoryBot.create(:user, last_name: nil) }
      include_examples "Raises validation error"
    end

    context "with nil phone_number" do
      let(:user){ FactoryBot.create(:user, phone_number: nil) }
      include_examples "Raises validation error"
    end

    context "with nil email" do
      let(:user){ FactoryBot.create(:user, email: nil) }
      include_examples "Raises validation error"
    end   
  end
end
