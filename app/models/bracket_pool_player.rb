class BracketPoolPlayer < ApplicationRecord
  belongs_to :bracket_pool
  belongs_to :player
  belongs_to :team

end
