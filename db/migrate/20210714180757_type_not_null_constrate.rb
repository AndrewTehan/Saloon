class TypeNotNullConstrate < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :phone_number, false
    change_column_null :users, :type, false
  end
end
