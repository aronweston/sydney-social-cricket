class ApplicationController < ActionController::Base
    before_action :fetch_user

    private
    def fetch_user
        team = Team.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless team.present?

        player = Player.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless player.present?
        
        
        
        if player.present?
            @current_user = player
        end
        
        if team.present?
            @current_user = team
        end
    
    end
   
end
