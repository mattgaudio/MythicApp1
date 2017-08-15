class AddPlayersAndRoundsToBracket < ActiveRecord::Migration[5.1]
  def change
    add_column :brackets, :players_per_team, :integer
    add_column :brackets, :rounds, :integer
  end
end
