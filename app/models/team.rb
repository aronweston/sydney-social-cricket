class Team < ApplicationRecord
    has_many :players
    has_many :games
    # validates :email, :uniqueness => true
    validates :players, length: { maximum: 20 }
    has_secure_password
end

