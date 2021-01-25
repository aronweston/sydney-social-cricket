class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.text :first_name
      t.text :last_name
      t.text :role
      t.string :grade
      t.integer :suburb
      t.text :bio
      t.text :profile_image
      t.text :banner_photo
      t.text :email
      t.string :password_digest
      t.integer :team_id
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
