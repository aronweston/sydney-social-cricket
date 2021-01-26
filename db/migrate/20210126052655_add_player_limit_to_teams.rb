class AddPlayerLimitToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :player_limit, :integer, :default => 20
  end
end
