class AddTeamIdToPlayers < ActiveRecord::Migration[5.1]
  def change
    unless column_exists?(:players, :team_id)
      add_column :players, :team_id, :integer
    end
  end
end
