# frozen_string_literal: true
require 'elasticsearch/model'

class Service < ApplicationRecord
  include Elasticsearch::Model
  
  has_many :service_visits, dependent: :destroy
  has_many :visits, through: :service_visits

  has_many :master_services, dependent: :destroy
  has_many :masters, through: :master_services

  monetize :price_cents

  validates_uniqueness_of :service_name

  validate :not_negative_price, :empty_service_name

  def not_negative_price
    errors.add(:price, "shouldn't be negative") if price.negative?
  end

  def empty_service_name
    errors.add(:service_name, "shoundn't be empty") if service_name == ''
  end
end

Service.__elasticsearch__.create_index!
Service.import
