class AddStartColumnsToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_column :tournaments, :open_signup, :string
    add_column :tournaments, :show_rounds, :string
    add_column :tournaments, :private, :string
    add_column :tournaments, :start_at, :datetime
  end
end
