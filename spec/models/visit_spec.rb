# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Visit, type: :model do
  test_visit = FactoryBot.create(:visit)

  it "date shouldn't be in past by validation" do
    expect(test_visit).to be_valid
  end

  it "date shouldn't be in past" do
    expect(test_visit.date).to be > test_visit.created_at
  end

  it 'it should has master' do
    expect(test_visit.master).to be
  end

  it 'it should has service' do
    expect(test_visit.service).to be
  end

  it 'it should has master which has service skill' do
    expect(test_visit.master.services).to include test_visit.service
  end
end
