class AddBracketPoolNameToBracketPool < ActiveRecord::Migration[5.1]
  def change
    add_column :bracket_pools, :name, :string
    add_column :bracket_pools, :player_size, :integer
  end
end
