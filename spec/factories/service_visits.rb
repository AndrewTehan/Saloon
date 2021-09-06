# frozen_string_literal: true

FactoryBot.define do
  factory :service_visit do
    association :visit
    association :service
  end
end
