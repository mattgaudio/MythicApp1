class AddPlayerToTeamInvite < ActiveRecord::Migration[5.1]
  def change
    add_column :team_invites, :player_id, :integer
  end
end
