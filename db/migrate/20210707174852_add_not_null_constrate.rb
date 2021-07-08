# frozen_string_literal: true

class AddNotNullConstrate < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :email, false
    change_column_null :users, :phone_number, false
  end
end
