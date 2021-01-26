class AddUserCheckToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :team, :boolean
  end
end
