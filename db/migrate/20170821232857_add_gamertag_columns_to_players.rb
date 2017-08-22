class AddGamertagColumnsToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :xb1_gamertag, :string
    add_column :players, :ps4_gamertag, :string
    add_column :players, :steam_username, :string
  end
end
