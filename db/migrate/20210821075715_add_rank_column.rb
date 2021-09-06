# frozen_string_literal: true

class AddRankColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :masters, :rank, :string
  end
end
