class User < ApplicationRecord
  include Clearance::User
  has_one :player

    validates :email, :password, presence: true
    validates :email, uniqueness: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :password, confirmation: { message: "Passwords must match" }
    validates :password, length: { in: 6..20 }

end
