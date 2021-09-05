require 'rails_helper'

RSpec.describe Master, type: :model do
  it "is valid with valid attributes" do
    expect(FactoryBot.create(:master)).to be_valid
  end
end
