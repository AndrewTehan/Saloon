class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.string :client_email
      t.string :date
      t.string :order
      t.string :addition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
