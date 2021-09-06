# frozen_string_literal: true

class ServiceVisit < ApplicationRecord
  belongs_to :service
  belongs_to :visit
end
