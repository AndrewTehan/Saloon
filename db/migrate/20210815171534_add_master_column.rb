class AddMasterColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :master, :string, default: ''
  end
end
