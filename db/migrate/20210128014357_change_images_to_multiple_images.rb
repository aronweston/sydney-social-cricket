class ChangeImagesToMultipleImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :banner_photo
    remove_column :players, :profile_image
    add_column :players, :images, :text, :array => true, :default => []
  end
end
