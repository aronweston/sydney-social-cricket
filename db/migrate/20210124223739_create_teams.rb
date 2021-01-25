class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :name
      t.text :logo
      t.text :banner_photo
      t.string :grade
      t.integer :suburb
      t.integer :player_limit

      t.timestamps
    end
  end
end
