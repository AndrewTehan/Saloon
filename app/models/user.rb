# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  def full_name
    "#{first_name} #{last_name}"
  end

  validate :invalid_first_name, :invalid_last_name, :invalid_phone_number, :invalid_email

  def invalid_first_name
    errors.add(:first_name, "shouldn't be empty") if first_name == ""
  end

  def invalid_last_name
    errors.add(:last_name, "shouldn't be empty") if last_name == ""
  end

  def invalid_phone_number
    errors.add(:phone_number, "shouldn't be empty") if phone_number == ""
  end

  def invalid_email
    errors.add(:email, "shouldn't be empty") if email == ""
  end
end
