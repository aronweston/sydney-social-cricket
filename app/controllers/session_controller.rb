class SessionController < ApplicationController
  def new
  end

  def omniauth
    # Find them when they log in
    @auth_player = Player.create_from_omniauth(auth)
    if @auth_player.valid?
      session[:user_id] = @auth_player.id
      if @auth_player.grade.nil? && @auth_player.role.nil? 
        redirect_to player_add_profile_path(@auth_player)
      else
        redirect_to root_path
      end
    else 
      flash[:error]
      redirect_to login_path
    end
  end

  def create
    #TODO: What if the player and the team have the same email? Maybe add some extra params that they can't stuff up like team postcode idk 
    team = Team.find_by :email => params[:email]
    player = Player.find_by :email => params[:email]
   
    if team.nil? 
      authenticate(player)
    elsif player.nil?
      authenticate(team)
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  private
  def auth
    request.env['omniauth.auth']
  end 

  def authenticate(user)
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end 
  end

end
