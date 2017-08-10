class RemoveTypeFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :type, :string
  end
end
