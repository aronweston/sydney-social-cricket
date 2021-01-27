class Game < ApplicationRecord
    belongs_to :team1, class_name: 'Team', :foreign_key => :team1_id
    belongs_to :team2, class_name: 'Team', :foreign_key => :team2_id
    belongs_to :ground, :optional => true
    validate :validate_team_id
    def validate_team_id
        if team1_id === team2_id
            errors.add("Same Team Chosen:", "you must choose a different team")
        end
    end 
end