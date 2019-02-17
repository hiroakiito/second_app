class Games < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :score_1, :integer, default: 0
    add_column :games, :score_2, :integer, default: 0
    add_column :games, :tm_1, :string
    add_column :games, :tm_2, :string
  end
end
