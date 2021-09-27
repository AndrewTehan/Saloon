# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Master, type: :model do
  shared_examples "Raises not null violation error" do
    it "will raise not null violation error" do
      expect{ master }.to raise_error(ActiveRecord::NotNullViolation)
    end
  end

  describe "master factory" do
    context "with nil first name" do
      let(:master){ FactoryBot.create(:master, first_name: nil) }
      include_examples "Raises not null violation error"
    end

    context "with nil last name" do
      let(:master){ FactoryBot.create(:master, last_name: nil) }
      include_examples "Raises not null violation error"
    end

    context "with nil phone number" do
      let(:master){ FactoryBot.create(:master, phone_number: nil) }
      include_examples "Raises not null violation error"
    end    
  end

  describe "valid master factory" do
    let(:master) { FactoryBot.create(:master) }

    context "is valid" do
      it "with valid attributes" do
        expect(master).to be_valid
      end 

      it 'when has any skills' do
        expect(FactoryBot.create(:master).services).not_to be_empty
      end
    end
  end
end
