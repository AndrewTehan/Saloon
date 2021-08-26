class CreateServiceVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :service_visits do |t|
      t.integer :service_id
      t.integer :visit_id
      t.timestamps
    end
  end
end
