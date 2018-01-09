class AddTournamentPoolIdToTeams < ActiveRecord::Migration[5.1]
  def change
    add_reference :teams, :tournament_pool, foreign_key: true
  end
end
