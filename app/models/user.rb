class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, length: { maximum: 25 }
end
