class PagesController < ApplicationController
  def home
    @players = Player.all
    @games = Game.all
    @teams = Team.all
    @grounds = Ground.all
  end

  def users
    @players = Player.all
    @teams = Team.all 
  end

end
