class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :team_1
      t.integer :team_2
      t.integer :ground_id
      t.datetime :date

      t.timestamps
    end
  end
end
