# frozen_string_literal: true

class DeleteMastersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :masters, force: :cascade
  end
end
