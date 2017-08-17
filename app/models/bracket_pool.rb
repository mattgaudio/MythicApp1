class BracketPool < ApplicationRecord
  belongs_to :bracket
  has_many :players

end
