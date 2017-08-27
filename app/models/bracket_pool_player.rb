class BracketPoolPlayer < ApplicationRecord
  belongs_to :bracket_pool
  belongs_to :player
  belongs_to :team

  delegate :xb1_gamertag, to: :player, prefix: true, allow_nil: true

  validate :player_has_one_bracket_pool, on: :create

  def player_has_one_bracket_pool
      if player.bracket_pools.where(active: true, nightly: true).size >= 1
        errors.add(:base, 'You have already joined a nightly active bracket pool!')
      end

      if player.bracket_pools.where(active: true, weekly: true).size >= 1
        errors.add(:base, 'You have already joined a weekly active bracket pool!')
      end
  end
  scope :not_team_invites, -> { joins("LEFT OUTER JOIN team_invites ON team_invites.player_id = bracket_pool_players.player_id").where("team_invites.id IS NULL") }
end
