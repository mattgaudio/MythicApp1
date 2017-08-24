class RemoveColumnsFromTournaments < ActiveRecord::Migration[5.1]
  def change
    remove_column :tournaments, :open_signup, :boolean
    remove_column :tournaments, :show_rounds, :boolean
    remove_column :tournaments, :private, :boolean
  end
end
