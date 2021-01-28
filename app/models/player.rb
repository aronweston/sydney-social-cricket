class Player < ApplicationRecord
    belongs_to :team, :optional => true
    has_secure_password 
    
    validates :email, :uniqueness => true, :presence => true
    validates :password, length: { in: 7..20}

    #Create a user from Google OmniAuth
    def self.create_from_omniauth(auth)
        player = Player.find_or_create_by(uid: auth['uid'], provider: auth["provider"]) do |p|
        p.email = auth['info']['email']
        p.first_name = auth['info']['first_name']
        p.last_name = auth['info']['last_name']
        p.password = SecureRandom.hex(16)
        end
    end
end
