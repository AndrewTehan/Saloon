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