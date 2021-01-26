class RemoveStiTypeFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :type, :string
  end
end
