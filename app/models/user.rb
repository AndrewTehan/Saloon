# frozen_string_literal: true

class User < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :masters, through: :visits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
end


# # связующая услуга+запись
# # table service_visits:  id:integer service_id:interger visit_id:integer
# constraint service_id:foreign_key visit_id:foreign_key


# # связующая таблица мастер + специализация
# # table master_services:  id:integer service_id:interger master_id:integer
# constraint service_id:foreign_key master_id:foreign_key
