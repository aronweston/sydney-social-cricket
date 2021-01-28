class PlayersController < ApplicationController
  before_action :check_for_player, :only => [:edit]
  
  def index
    @players = Player.all
  end

  def add_profile
    @player = Player.find params[:id]
  end

  def profile_update
    player = Player.find params[:id]
    session[:user_id] = player.id
    player.update_attributes(add_profile_params)
    redirect_to root_path 
  end 

  def new 
    @player = Player.new
  end

  def create
    player = Player.create(player_params)
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      player.profile_image = req["public_id"]
    end
    
    if player.save
      redirect_to player_add_profile_path(player)
    else 
      raise "hell"
      render :new
    end 
  end

  def edit 
    @player = Player.find params[:id]
  end 

  def show
    @player = Player.find params[:id]
  end 

  def update
    player = Player.find params[:id] 
    player.update add_profile_params
    redirect_to player_path(player)
  end

  private
  def player_params
    params.require(:player).permit(:email, :password, :password_confirmation)
  end

  def add_profile_params
    params.require(:player).permit(:first_name, :last_name, :role, :grade, :suburb, :bio)
  end 

end
