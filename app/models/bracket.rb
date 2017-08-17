class Bracket < ApplicationRecord
	belongs_to :game
	has_many :tournaments
	has_many :bracket_pools
	# has_many :bracket_players
	# has_many :players, through: :bracket_players

end
