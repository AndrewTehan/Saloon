# frozen_string_literal: true

FactoryBot.define do
  factory :service do
    cost { Faker::Commerce.price }
    service_name { Faker::Commerce.product_name }

    trait :men_haircut do
      service_name { 'Men Haircut' }
      cost { 15 }
    end

    trait :women_haircut do
      service_name { 'Women short haircut' }
      cost { 20 }
    end
  end
end
