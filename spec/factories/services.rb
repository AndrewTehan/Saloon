# frozen_string_literal: true

FactoryBot.define do
  factory :service do
    price { Faker::Commerce.price }
    service_name { Faker::Commerce.product_name }

    trait :men_haircut do
      service_name { 'Men Haircut' }
      price { 15 }
    end

    trait :women_haircut do
      service_name { 'Women short haircut' }
      price { 20 }
    end
  end
end
