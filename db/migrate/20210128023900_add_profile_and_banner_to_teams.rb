class AddProfileAndBannerToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :profile, :string
    add_column :teams, :banner, :string
  end
end
