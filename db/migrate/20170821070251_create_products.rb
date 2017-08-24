class CreateProducts < ActiveRecord::Migration[5.1]
  def change
  	# drop_table :products
    create_table :products do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
