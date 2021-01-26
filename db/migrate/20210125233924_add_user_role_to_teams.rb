class AddUserRoleToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :user_role, :string, :default => "team"
  end
end
