class CreateBracketPoolPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :bracket_pool_players do |t|
      t.references :bracket_pool, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
