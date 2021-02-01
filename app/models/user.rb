class User < ApplicationRecord
  validates :email, :password, presence: true
  validates :username, length: { minimum: 25 }
end
