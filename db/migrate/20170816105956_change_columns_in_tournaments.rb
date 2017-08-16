class ChangeColumnsInTournaments < ActiveRecord::Migration[5.1]
  def change
    change_column :tournaments, :open_signup, :boolean
    change_column :tournaments, :show_rounds, :boolean
    change_column :tournaments, :private, :boolean
  end
end
