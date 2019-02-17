class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :team_1
      t.string :team_2
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
      add_index :games, [:user_id, :created_at]
  end
end
