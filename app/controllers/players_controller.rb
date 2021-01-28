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
    if params[:player][:profile].present?
      profile = Cloudinary::Uploader.upload(params[:player][:profile])
      player.profile = profile["public_id"]
      
    end

    if params[:player][:banner].present?
      banner = Cloudinary::Uploader.upload(params[:player][:banner])
      player.banner = banner["public_id"]
    end

    player.update_attributes(add_profile_params)
    player.save
    if player.save
      session[:user_id] = player.id
      redirect_to root_path
    else 
      render :add_profile
    end 
  end 

  def new 
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.save
      redirect_to player_add_profile_path(@player)
    else 
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
