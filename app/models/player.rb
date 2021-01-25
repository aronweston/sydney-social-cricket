class Player < ApplicationRecord
    belongs_to :team, :optional => true
    has_secure_password
    validates :email, :uniqueness => true, :presence => true 
end
