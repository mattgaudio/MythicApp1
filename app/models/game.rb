class Game < ApplicationRecord
	has_many :brackets
	has_many :tournaments, through: :brackets

	has_attached_file :game_img, styles: { xl: "1024x1024>", l: "768x768>", m: "500x500>", s: "250x250>", xs: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :game_img, content_type: /\Aimage\/.*\z/

  scope :fps, -> { where(game_type: "fps") }
  scope :moba, -> { where(game_type: "moba") }
  scope :hero, -> { where(game_type: "hero") }
  scope :more, -> { where(game_type: "more") }

end
