class ChangeNotNullConstrate < ActiveRecord::Migration[6.1]
  def change
    change_column_null :visits, :master_id, true
  end
end
