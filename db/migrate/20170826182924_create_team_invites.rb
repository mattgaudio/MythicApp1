class CreateTeamInvites < ActiveRecord::Migration[5.1]
  def change
    create_table :team_invites do |t|
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
