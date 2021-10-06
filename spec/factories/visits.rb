# frozen_string_literal: true

FactoryBot.define do
  factory :visit do
    addition { Faker::Lorem.sentence(word_count: 5) }
    date { 10.days.from_now }
    master { association :master, service_id: service_id }
    association :client
    service_visit_attributes { attributes_for(:service_visit, service_id: service_id) }

    transient do
      service_id { create(:service).id }
    end

    trait :men_haircut do
      service_id { create(:service, :men_haircut).id }
    end

    trait :women_haircut do
      service_id { create(:service, :women_haircut).id }
    end
  end
end
