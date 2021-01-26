class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def edit 
    @game =Ggame.find params[:id]
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

end
