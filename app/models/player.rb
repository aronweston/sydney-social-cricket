class Player < ApplicationRecord
    belongs_to :team, :optional => true
    validates :email, :uniqueness => true, :presence => true 
    has_secure_password
end
