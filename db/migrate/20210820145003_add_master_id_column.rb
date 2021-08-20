class AddMasterIdColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :master_id, :bigint, null: false
  end
end
