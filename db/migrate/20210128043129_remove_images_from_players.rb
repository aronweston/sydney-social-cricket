class RemoveImagesFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :images, :text
  end
end
