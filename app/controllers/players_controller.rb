class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
  
  def new
    @player = Player.new
  end

  def edit 
  end 

  def create
    @player = Player.new player_params
    if @player.save
      redirect_to root_path
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
    params.require(:player).permit(:email, :first_name, :password, :password_confirmation)
  end

end
