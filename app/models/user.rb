class User < ApplicationRecord
    validates :username, presence: true, within: 6..20, too_long: 'pick a shorter name (<20)', too_short: 'pick a longer name (6>)'
    validates :email, presence: true
    validates :password, presence: true
end
