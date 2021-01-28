class ChangeUidToNillForPlayers < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :uid, :column_type, :column_options
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
