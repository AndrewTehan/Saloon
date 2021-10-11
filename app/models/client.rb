# frozen_string_literal: true

class Client < User
  include Elasticsearch::Model
  
  has_many :visits, dependent: :destroy
  has_many :masters, through: :visits
end
