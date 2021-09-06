# frozen_string_literal: true

class RemoveRankColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :masters, :rank
  end
end
