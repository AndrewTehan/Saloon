# frozen_string_literal: true

FactoryBot.define do
  factory :master, parent: :user do
    initialize_with { Master.new }
    master_services_attributes { [attributes_for(:master_service, service_id: service_id)] }

    transient do
      service_id { create(:service).id }
    end

    trait :coloring do
      service_id { Service.find_by(service_name: "Coloring").id }
    end

    trait :men_haircut do
      service_id { Service.find_by(service_name: "men_haircut").id }
    end

    trait :women_short_haircut do
      service_id { Service.find_by(service_name: "Women Short Haircut").id }
    end

    trait :women_long_haircut do
      service_id { Service.find_by(service_name: "Women Long Haircut").id }
    end

    trait :gray_cammuffling do
      service_id { Service.find_by(service_name: "Gray Cammuffling").id }
    end

    trait :childre_haircuts do
      service_id { Service.find_by(service_name: "Childre Haircuts").id }
    end

    trait :mustache_and_beard_haircut do
      service_id { Service.find_by(service_name: "Mustache and Beard Haircut").id }
    end

    trait :highlighting do
      service_id { Service.find_by(service_name: "Highlighting").id }
    end

    trait :lamination do
      service_id { Service.find_by(service_name: "Lamination").id }
    end

    trait :toning do
      service_id { Service.find_by(service_name: "Toning").id }
    end

    trait :balayazh do
      service_id { Service.find_by(service_name: "Balayazh").id }
    end

    trait :eyebrow_correction do
      service_id { Service.find_by(service_name: "Eyebrow Correction").id }
    end

    trait :women_haircut do
      service_id { Service.find_by(service_name: "Women Haircut").id }
    end
  end
end
