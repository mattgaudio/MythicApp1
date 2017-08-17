class Player < ApplicationRecord
  belongs_to :user
#  has_many :bracket_players
#  has_many :bracket, through: :bracket_players

  validates :user, uniqueness: true

end
