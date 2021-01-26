class RemoveTeamRefFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :team_1, :integer
    remove_column :games, :team_2, :integer
  end
end
