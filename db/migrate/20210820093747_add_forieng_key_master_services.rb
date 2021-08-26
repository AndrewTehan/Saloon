class AddForiengKeyMasterServices < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :master_services, :masters, column: :master_id, primar_key: :id
    add_foreign_key :master_services, :services, column: :service_id, primar_key: :id
  end
end
