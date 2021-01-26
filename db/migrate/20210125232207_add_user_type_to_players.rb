class AddUserTypeToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :type, :string, :default => "player"
  end
end
