class JoinBracketPoolWorkflow

  include ActiveRecord::Model

  def initialize(attributes={})
    super
    @bracket_pool = BracketPool.find(attributes[:bracket_pool_id])
  end

  def run
    begin
      ActiveRecord::Base.transaction do
        # save Model !
        # save Model !
        # update model
      end
    rescue
      @success = false
    end
  end

  def persisted?
    false
  end
end
