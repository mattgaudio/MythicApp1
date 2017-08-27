class CreateCaptains < ActiveRecord::Migration[5.1]
  def change
    create_table :captains do |t|
      t.references :team, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
