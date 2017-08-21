class Bracket < ApplicationRecord
	belongs_to :game
	has_many :tournaments
	has_many :bracket_pools, dependent: :destroy

	# having trouble deleting brackets
end
