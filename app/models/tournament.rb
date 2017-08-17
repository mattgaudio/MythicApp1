class Tournament < ApplicationRecord
	belongs_to :bracket, optional: true

end
