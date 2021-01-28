class AddUidToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :uid, :string
    add_column :players, :provider, :string
  end
end
