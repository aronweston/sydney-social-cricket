class AddTeamCheckToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :is_team, :boolean, :default => true
  end
end
