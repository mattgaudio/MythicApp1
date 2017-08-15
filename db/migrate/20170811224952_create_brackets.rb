class CreateBrackets < ActiveRecord::Migration[5.1]
  def change
    create_table :brackets do |t|
      t.datetime :event
      t.string :title
      t.integer :players
      t.integer :brackets_filled

      t.timestamps
    end
  end
end
