class AddBioToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :bio, :text
  end
end
