require 'rails_helper'

RSpec.describe Service, type: :model do

  test_service = Service.new(cost: 20, service_name: "Men Haircut")

  it "cost shouldn't be less then 0" do
    expect(test_service.cost).not_to be < "0"
  end

  it "service_name shouldn't be nil" do
    expect(test_service.service_name).not_to be nil
  end
end
