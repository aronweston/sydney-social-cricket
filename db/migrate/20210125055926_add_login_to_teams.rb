class AddLoginToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :password_digest, :string
    add_column :teams, :email, :text
  end
end
