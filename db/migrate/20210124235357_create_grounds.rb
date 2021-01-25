class CreateGrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :grounds do |t|
      t.text :name
      t.text :address
      t.text :image
      t.text :google_map

      t.timestamps
    end
  end
end
