class Service < ApplicationRecord
  has_many :service_visits
  has_many :visits, through: :service_visits

  has_many :master_services
  has_many :masters, through: :master_services
end
