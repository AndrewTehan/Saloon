class DeleteOrderColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :order
  end
end
