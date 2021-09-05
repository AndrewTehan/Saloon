FactoryBot.define do
  factory :master do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
    password { "111111" }
    master_services_attributes { [attributes_for(:master_service, service_id: service_id)] }

    transient do
      service_id { create(:service).id }
    end

    trait :men_haircut_master do
      service_id { create(:service, :men_haircut).id }
    end

    trait :women_haircut_master do
      service_id { create(:service, :women_haircut).id }
    end
  end
end
