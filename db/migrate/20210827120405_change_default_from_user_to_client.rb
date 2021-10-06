# frozen_string_literal: true

class ChangeDefaultFromUserToClient < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :type, from: 'User', to: 'Client'
  end
end
