class Player < ApplicationRecord
    belongs_to :team, :optional => true
    validates :email, :uniqueness => true, :presence => true 
    # validates :suburb, :length: { is: 4}
    has_secure_password
end
