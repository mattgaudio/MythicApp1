class AddGameGroupToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :game_group, :string
  end
end
