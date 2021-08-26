class AddForiengKeyServiceVisits < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :service_visits, :services, column: :service_id, primar_key: :id
    add_foreign_key :service_visits, :visits, column: :visit_id, primar_key: :id
  end
end
