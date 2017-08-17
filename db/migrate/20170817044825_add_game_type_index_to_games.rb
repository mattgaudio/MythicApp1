class AddGameTypeIndexToGames < ActiveRecord::Migration[5.1]
  def change
    add_index :games, :game_type
  end
end
