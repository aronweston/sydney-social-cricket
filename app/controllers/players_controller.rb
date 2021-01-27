class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def add_profile
    @player = Player.find params[:id]
  end

  def profile_update
    player = Player.find params[:id]
    player.update add_profile_params
    session[:user_id] = player.id
    redirect_to root_path 
  end 

  def new
    @player = Player.new
  end

  def edit 
    @player = Player.find params[:id]
  end 

  def create
    @player = Player.new player_params
    if @player.save
      redirect_to player_add_profile_path(@player)
    else
      render :new
    end
  end

  def show
    @player = Player.find params[:id]
  end 

  def update
  end

  private
  def player_params
    params.require(:player).permit(:email, :password, :password_confirmation)
  end

  def add_profile_params
    params.require(:player).permit(:first_name, :last_name, :role, :grade, :suburb, :bio, :profile_image, :banner_photo, :profile_image)
  end 

end
