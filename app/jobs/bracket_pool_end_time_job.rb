class BracketPoolEndTimeJob < ApplicationJob
  queue_as :default

  def perform(id)
    bracket_pool = BracketPool.find(id)
    bracket_pool.update_attributes(active: false)
  end
end
