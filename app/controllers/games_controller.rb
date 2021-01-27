class GamesController < ApplicationController
  before_action :check_for_login, :only => [:edit]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def edit 
    @game = Game.find params[:id]
  end 

  def create
    @game = Game.new game_params
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @game = Game.find params[:id]
  end 

  private 
  def game_params
    params.require(:game).permit(:date, :ground_id, :team1_id, :team2_id)
  end

end
