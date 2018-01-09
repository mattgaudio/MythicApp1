class TournamentPool < ApplicationRecord
  belongs_to :bracket_pool
  has_many :teams
end
