class AddTeamEmailColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :specializations, :team_email, :string, null: false
  end
end
