class CreateTournamentPools < ActiveRecord::Migration[5.1]
  def change
    create_table :tournament_pools do |t|
      t.references :bracket_pool, foreign_key: true

      t.timestamps
    end
  end
end
