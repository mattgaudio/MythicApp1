class CreateBracketPools < ActiveRecord::Migration[5.1]
  def change
    create_table :bracket_pools do |t|
      t.references :bracket, foreign_key: true

      t.timestamps
    end
  end
end
