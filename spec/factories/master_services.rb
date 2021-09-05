FactoryBot.define do
  factory :master_service do
    association :master
    association :service
  end
end
