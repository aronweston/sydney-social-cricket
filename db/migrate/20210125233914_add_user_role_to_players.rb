class AddUserRoleToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :user_role, :string, :default => "player"
  end
end
