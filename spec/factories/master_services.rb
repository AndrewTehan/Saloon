# frozen_string_literal: true

FactoryBot.define do
  factory :master_service do
    association :master
    association :service
  end
end
