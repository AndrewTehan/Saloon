class AddStateColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :state, :string, default: 'sent', null: false
  end
end
