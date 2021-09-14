class ChangeCostTypeToInt < ActiveRecord::Migration[6.1]
  def change
    change_column :services, :cost, 'integer USING CAST(cost AS integer)'
  end
end
