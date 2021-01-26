class RemovePlayerLimitFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :player_limit, :integer
  end
end
