class AddConsoleToBracketPools < ActiveRecord::Migration[5.1]
  def change
    add_column :bracket_pools, :console, :string
  end
end
