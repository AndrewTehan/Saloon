class Master < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits

  has_many :master_services
  has_many :services, through: :master_services # услуги, которые осущетвляет мастер
end
