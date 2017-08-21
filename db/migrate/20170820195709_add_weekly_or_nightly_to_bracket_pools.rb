class AddWeeklyOrNightlyToBracketPools < ActiveRecord::Migration[5.1]
  def change
    add_column :bracket_pools, :weekly, :boolean
    add_column :bracket_pools, :nightly, :boolean
  end
end
