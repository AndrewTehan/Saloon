# frozen_string_literal: true

class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :master_service, null: false
      t.string :cost, null: false
      t.timestamps
    end
  end
end
