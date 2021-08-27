class Master < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits

  has_many :master_services
  has_many :services, through: :master_services

  enum rank: [:first_rank, :second_rank, :third_rank, :fourth_rank, :fifth_rank]
end
