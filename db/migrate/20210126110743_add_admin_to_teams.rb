class AddAdminToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :admin, :boolean, :default => false
  end
end
