class AddBracketToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_reference :tournaments, :bracket, foreign_key: true
  end
end
