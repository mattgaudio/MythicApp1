class Player < ApplicationRecord
  belongs_to :user
  has_many :bracket_pool_players, dependent: :destroy
  has_many :bracket_pools, through: :bracket_pool_players
  has_many :team_invites, dependent: :destroy
  has_many :teams

end
