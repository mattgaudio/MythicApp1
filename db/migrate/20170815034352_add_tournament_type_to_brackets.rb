class AddTournamentTypeToBrackets < ActiveRecord::Migration[5.1]
  def change
    add_column :brackets, :tournament_type, :string
    add_column :brackets, :console_xbox, :boolean
    add_column :brackets, :console_ps4, :boolean
    add_column :brackets, :console_steam, :boolean
  end
end
