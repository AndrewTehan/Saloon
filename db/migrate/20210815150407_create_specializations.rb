class CreateSpecializations < ActiveRecord::Migration[6.1]
  def change
    create_table :specializations do |t|
      t.string :speciality, null: false
      t.timestamps
    end
  end
end
