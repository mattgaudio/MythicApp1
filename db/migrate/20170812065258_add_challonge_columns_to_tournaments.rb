class AddChallongeColumnsToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_column :tournaments, :tournament_type, :string
    add_column :tournaments, :tournament_url, :string
    add_column :tournaments, :tournament_name, :string
    add_column :tournaments, :tournament_description, :string
  end
end
