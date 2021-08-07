class RemoveClientEmailFromVisits < ActiveRecord::Migration[6.1]
  def change
    remove_column :visits, :client_email
  end
end
