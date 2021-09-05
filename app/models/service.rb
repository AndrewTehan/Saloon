class Service < ApplicationRecord
  has_many :service_visits, dependent: :destroy
  has_many :visits, through: :service_visits

  has_many :master_services, dependent: :destroy
  has_many :masters, through: :master_services

  validates_uniqueness_of :service_name
end
