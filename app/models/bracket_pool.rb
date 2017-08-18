class BracketPool < ApplicationRecord
  belongs_to :bracket
  has_many :bracket_pool_players
  has_many :players, through: :bracket_pool_players
end
