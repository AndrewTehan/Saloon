class CreateMasterServices < ActiveRecord::Migration[6.1]
  def change
    create_table :master_services do |t|
      t.integer :service_id
      t.integer :master_id
      t.timestamps
    end
  end
end
