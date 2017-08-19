class Player < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :bracket_pool_players, dependent: :destroy
  has_many :bracket_pools, through: :bracket_pool_players
end
