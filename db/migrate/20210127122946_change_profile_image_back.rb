class ChangeProfileImageBack < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :profile_image
    add_column :players, :profile_image, :string
  end
end
