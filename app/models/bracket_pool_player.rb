class BracketPoolPlayer < ApplicationRecord
  belongs_to :bracket_pool
  belongs_to :player
  belongs_to :team

  validate :player_has_one_bracket_pool

  def player_has_one_bracket_pool
      if player.bracket_pools.where(active: true, nightly: true).size >= 1
        errors.add(:base, 'You have already joined a nightly active bracket pool!')
      end

      if player.bracket_pools.where(active: true, weekly: true).size >= 1
        errors.add(:base, 'You have already joined a weekly active bracket pool!')
      end
  end
end
