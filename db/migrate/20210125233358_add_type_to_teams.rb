class AddTypeToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :type, :string, :default => "team"
  end
end
