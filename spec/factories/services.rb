FactoryBot.define do
  factory :service do
    cost { Faker::Commerce.price }
    service_name { Faker::Commerce.product_name }

    trait :men_haircut do
      service_name { "Men Haircut" }
      cost { 15 }
    end

    trait :women_haircut do
      service_name { "Women Haircut" }
      cost { 30 }
    end
  end
end