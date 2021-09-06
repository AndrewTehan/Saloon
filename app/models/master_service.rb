# frozen_string_literal: true

class MasterService < ApplicationRecord
  belongs_to :master
  belongs_to :service
end
