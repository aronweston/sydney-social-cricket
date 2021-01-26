class RemoveUserCheckFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :team, :boolean
  end
end
