class CreateMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :masters do |t|
      t.string :name 
      t.string :master_email
      t.string :phone_number
      t.timestamps
    end
  end
end
