class Player < ApplicationRecord
    belongs_to :team, :optional => true
    has_secure_password

    validates :email, :uniqueness => true, :presence => true
    validates :password, length: { in: 7..20}
    # validates :suburb, :length: { is: 4}
end
