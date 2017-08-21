class AddTeamIdToBracketPoolPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :bracket_pool_players, :team_id, :integer
  end
end
