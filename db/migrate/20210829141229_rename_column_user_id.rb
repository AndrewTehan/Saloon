class RenameColumnUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :visits, :user_id, :client_id
  end
end
