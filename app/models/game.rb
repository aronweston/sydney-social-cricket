class Game < ApplicationRecord
    has_many :teams
    belongs_to :ground, :optional => true
end