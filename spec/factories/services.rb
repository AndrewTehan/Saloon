FactoryBot.define do
  factory :service do
    cost { Faker::Commerce.price }
    master_service { Faker::Commerce.product_name }

    trait :men_haircut do
      master_service { "Men Haircut" }
      cost { 15 }
    end

    trait :women_haircut do
      master_service { "Women Haircut" }
      cost { 30 }
    end
  end
end