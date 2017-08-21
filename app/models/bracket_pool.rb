class BracketPool < ApplicationRecord
  belongs_to :bracket
  has_many :bracket_pool_players, dependent: :destroy
  has_many :players, through: :bracket_pool_players
  has_many :teams, dependent: :destroy

  after_commit -> { BracketPoolActivateJob.set(wait_until: activation_time).perform_later(id) }, on: :create
  after_commit -> { BracketPoolEndTimeJob.set(wait_until: end_time).perform_later(id) }, on: :create


end
