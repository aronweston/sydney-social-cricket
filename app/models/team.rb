class Team < ApplicationRecord
    has_many :players
    validates :password, length: { in: 7..20}
    validates :players, length: { maximum: 20 }
    has_secure_password
    def games
        Game.where('team1_id =? OR team2_id =?', id, id)
    end
end

