require 'rails_helper'

RSpec.describe Master, type: :model do
  test_master = FactoryBot.create(:master)

  it "is valid with valid attributes" do
    expect(test_master).to be_valid
  end

  it "master should has any skills" do
    expect(test_master.services.to_a).not_to be_empty
  end

  it "master should has first_name" do
    expect(test_master.first_name).not_to be_nil
  end

  it "master should has last_name" do
    expect(test_master.last_name).not_to be_nil
  end

  it "master should has email" do
    expect(test_master.email).not_to be_nil
  end

  it "master should has phone_number" do
    expect(test_master.phone_number).not_to be_nil
  end
end
