class AddGameImgToGames < ActiveRecord::Migration[5.1]
  def up
    add_attachment :games, :game_img
  end

  def down
    remove_attachment :games, :game_img
  end
end
