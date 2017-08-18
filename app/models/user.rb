class User < ApplicationRecord
  include Clearance::User
  has_one :player

  def edit
  end

  def update
  end

end
