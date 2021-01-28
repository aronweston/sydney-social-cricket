class AddProfileAndBannerToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :profile, :string
    add_column :players, :banner, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
