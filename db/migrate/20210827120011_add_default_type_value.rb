# frozen_string_literal: true

class AddDefaultTypeValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :type, 'User'
  end
end
