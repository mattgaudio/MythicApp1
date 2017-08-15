class Bracket < ApplicationRecord
	belongs_to :game
	has_many :tournaments
	
end
