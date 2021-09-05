class SetUniwuenessServiceNameConstrate < ActiveRecord::Migration[6.1]
  def change
    add_index :services, :service_name, unique: true
  end
end
