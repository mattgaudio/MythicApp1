class AddTournamentIdToTournament < ActiveRecord::Migration[5.1]
  def change
    add_column :tournaments, :tournament_id, :integer
  end
end
