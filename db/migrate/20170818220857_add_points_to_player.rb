class AddPointsToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :points, :integer
  end
end
