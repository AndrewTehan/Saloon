# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Service, type: :model do

  shared_examples "Raises validation error" do
    it "will raise validation error" do
      expect{ service }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe "service_factory" do
    let(:service){ FactoryBot.create(:service) }
     
    it "should has positive price" do
      expect(service.price).not_to be < 0
    end

    it "should has name" do
      expect(service.service_name).not_to be_nil
    end
  end

  context "when invalid price" do
    let(:price){ -3 }
    let(:service){ FactoryBot.create(:service, price: price) }

    include_examples "Raises validation error"
  end

  context "when invalid service name" do
    let(:service_name){ "" }
    let(:service){ FactoryBot.create(:service, service_name: service_name) }

    include_examples "Raises validation error"
  end
end
