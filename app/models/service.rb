class Service < ApplicationRecord
  has_one :service_visits
  has_one :visit, through: :service_visits

  has_many :master_services
  has_many :masters, through: :master_services
end
