class Team < ApplicationRecord
    has_many :players
    has_many :games
    has_secure_password
end
