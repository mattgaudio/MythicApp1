class Player < ApplicationRecord
  belongs_to :user
  has_many :bracket_pool_players, dependent: :destroy
  has_many :bracket_pools, through: :bracket_pool_players

  # Having Trouble Deleting Players

  def nickname_present
    unless (nickname.present? || nickname2.present? || nickname3.present?)
      errors.add(:nickname, "nickname or nickname2 or nickname3 needs to be present")
    end
  end
end
