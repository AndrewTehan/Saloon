FactoryBot.define do
  factory :visit do
    addition { Faker::String.random(length: 4) }
    date { Time.now + 10.days }
    master_id { create(:master).id}
    client_id { 2 } # Andrew Tehanov id 2
    service_visit_attributes { attributes_for(:service_visit, service_id: service_id) }

    transient do
      service_id { Master.find_by(id: master_id).services.first.id }
    end

    trait :men_haircut_master do
      service_id { create(:service, :men_haircut).id }
    end

    trait :women_haircut_master do
      service_id { create(:service, :women_haircut).id }
    end
  end
end
