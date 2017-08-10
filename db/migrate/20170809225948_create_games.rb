class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :short_title
      t.string :long_title
      t.string :type

      t.timestamps
    end
  end
end
