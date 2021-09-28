# frozen_string_literal: true

class DeleteCostColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :cost
  end
end
