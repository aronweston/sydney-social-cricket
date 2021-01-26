class ApplicationController < ActionController::Base
    before_action :fetch_user

    private
    def fetch_user 
        team = Team.find_by :id => session[:user_id]
        player = Player.find_by :id => session[:user_id]

        if team.nil?
            fetch_player()
        else
            fetch_team()
        end 
    end 

    
    def fetch_team
        @current_user = Team.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present?    
    end
    
    def fetch_player
        @current_user = Player.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present?    
    end
   
end
