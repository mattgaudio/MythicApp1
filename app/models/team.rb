class Team < ApplicationRecord
  belongs_to :bracket_pool
  has_many :players, dependent: :destroy
  # has_one :captain, class_name: 'Player'
end
