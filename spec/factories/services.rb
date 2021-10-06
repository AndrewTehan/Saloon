# frozen_string_literal: true

FactoryBot.define do
  factory :service do
    price { Faker::Commerce.price }
    service_name { Faker::Commerce.product_name }

    trait :coloring do
      service_name { 'Coloring' }
      price { 30 }
    end

    trait :men_haircut do
      service_name { 'Men Haircut' }
      price { 15 }
    end

    trait :women_short_haircut do
      service_name { 'Women short haircut' }
      price { 20 }
    end

    trait :women_long_haircut do
      service_name { 'Women long haircut' }
      price { 25 }
    end

    trait :gray_cammuffling do
      service_name { 'Gray Cammuffling' }
      price { 10 }
    end

    trait :childre_haircuts do
      service_name { 'Childre\'s Haircuts' }
      price { 10 }
    end

    trait :mustache_and_beard_haircut do
      service_name { 'Mustache and Beard Haircut' }
      price { 13 }
    end

    trait :highlighting do
      service_name { 'Highlighting' }
      price { 28 }
    end

    trait :lamination do
      service_name { 'Lamination' }
      price { 45 }
    end

    trait :toning do
      service_name { 'Toning' }
      price { 24 }
    end

    trait :balayazh do
      service_name { 'Balayazh' }
      price { 27 }
    end

    trait :eyebrow_correction do
      service_name { 'Eyebrow Correction' }
      price { 17 }
    end

    trait :women_haircut do
      service_name { 'Eyebrow & Eyelash Tint' }
      price { 19 }
    end
  end
end
