# frozen_string_literal: true

FactoryBot.define do
  factory :master, parent: :user do
    initialize_with { Master.new }
    master_services_attributes { [attributes_for(:master_service, service_id: service_id)] }

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
