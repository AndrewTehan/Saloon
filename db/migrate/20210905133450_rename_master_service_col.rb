class RenameMasterServiceCol < ActiveRecord::Migration[6.1]
  def change
    rename_column :services, :master_service, :service_name
  end
end
