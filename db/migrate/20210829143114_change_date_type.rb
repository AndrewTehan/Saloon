# frozen_string_literal: true

class ChangeDateType < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :date, :string
    add_column :visits, :date, :datetime
  end
end
