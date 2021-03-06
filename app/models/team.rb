class Team < ApplicationRecord
  belongs_to :bracket_pool
  has_many :bracket_pool_players
  has_many :team_invites, dependent: :destroy
  has_one :captain
  belongs_to :tournament_pool, optional: true
  # has_one :captain, class_name: 'Player'

  validate :max_number_of_bracket_pool_players

  private

  def max_number_of_bracket_pool_players
    self.add.errors(:base, "Maximum Players Per Team Reached") if bracket_pool_players.count >= bracket_pool.bracket.players_per_team
  end
end
