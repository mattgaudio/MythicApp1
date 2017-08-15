class RenameColumnsForTournament < ActiveRecord::Migration[5.1]
   def self.up
    rename_column :tournaments, :tournament_name, :name 
    rename_column :tournaments, :tournament_url, :url 
    rename_column :tournaments, :tournament_description, :description
  end

  def self.down
   
  end
end
