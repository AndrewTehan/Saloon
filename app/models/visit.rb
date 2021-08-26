class Visit < ApplicationRecord
  include AASM

  aasm :column => 'state' do
    state :sent, initial: true
    state :confirmed
    state :done

    event :accepted do
      transitions from: :sent, to: :confirmed
    end

    event :finished do
      transitions from: :confirmed, to: :done
    end
  end

  belongs_to :user
  belongs_to :master

  has_many :service_visits
  has_many :services, through: :service_visits # услуги для суммирования
end
