class ChangeProfileImageToDefault < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :profile_image
    add_column :players, :profile_image, :text, :default => "https://res.cloudinary.com/aron/image/upload/v1611749210/placeholder_rwx627.jpg"
  end
end
