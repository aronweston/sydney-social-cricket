class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  
  def new
    @team = Team.new
  end

  def edit
    @team = Team.find params[:id]
  end 

  def show
    @team = Team.find params[:id]
  end 

  def create
    @team = Team.new team_params
    if @team.save
      redirect_to edit_team_path(@team)
    else
      render :new
    end
  end
  
  def update
    team = Team.find params[:id]
    team.update second_stage_params
    redirect_to root_path
  end
 

  private
  def team_params
    params.require(:team).permit(:email, :password, :password_confirmation)
  end
  def second_stage_params
    params.require(:team).permit(:name, :grade, :suburb, :logo, :banner_photo)
  end
end
