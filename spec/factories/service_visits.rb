FactoryBot.define do
  factory :service_visit do
    association :visit
    association :service
  end
end