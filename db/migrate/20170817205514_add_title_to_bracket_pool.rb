class AddTitleToBracketPool < ActiveRecord::Migration[5.1]
  def change
    add_column :bracket_pools, :title, :string
    add_column :bracket_pools, :active, :boolean
    add_column :bracket_pools, :activation_time, :datetime
    add_column :bracket_pools, :end_time, :datetime
    add_column :bracket_pools, :duration, :integer
  end
end
