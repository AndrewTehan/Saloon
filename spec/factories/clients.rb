# frozen_string_literal: true

FactoryBot.define do
  factory :client, parent: :user do
    initialize_with { Client.new }

    trait :andrewtehanov_email do
      email { 'andrewtehanov@gmail.com' }
    end

    trait :tehanov_last_name do
      last_name { 'tehanov' }
    end

    trait :tehanov_first_name do
      first_name { 'andrew' }
    end
  end
end
