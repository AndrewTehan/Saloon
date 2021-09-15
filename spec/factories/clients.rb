# frozen_string_literal: true

FactoryBot.define do
  factory :client, parent: :user do
    initialize_with { Client.new }
  end
end
