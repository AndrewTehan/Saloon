# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Service, type: :model do
  test_service = FactoryBot.create(:service)

  it "cost shouldn't be less then 0" do
    expect(test_service.cost.to_i).not_to be < 0
  end

  it "service_name shouldn't be nil" do
    expect(test_service.service_name).not_to be_nil
  end
end
