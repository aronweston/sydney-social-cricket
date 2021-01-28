class Player < ApplicationRecord
    belongs_to :team, :optional => true
    has_secure_password

    validates :email, :uniqueness => true, :presence => true
    # validates :password, length: { in: 7..20}
    # validates :suburb, :length: { is: 4}

    # def self.from_omniauth(auth)
    # where(email: auth.info.email).first_or_initialize do |player|
    #   player.email = auth.info.email
    #     player.password = SecureRandom.hex
    # end
end
