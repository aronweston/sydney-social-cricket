class TeamsController < ApplicationController
 
  def add_profile
    @team = Team.find params[:id]
  end

  def profile_update
    team = Team.find params[:id]
    team.update add_profile_params
    session[:user_id] = team.id
    redirect_to root_path
  end 

  def index
    @teams = Team.all
  end
  
  def new
    @team = Team.new
  end

  def edit
  end 

  def show
    @team = Team.find params[:id]
  end 

  def create
    @team = Team.new team_params
    if @team.save
      redirect_to team_add_profile_path(@team)
    else
      render :new
    end
  end
  
  def update
  end
  
  def destroy
  end

  private
  def team_params
    params.require(:team).permit(:email, :password, :password_confirmation)
  end

  def add_profile_params
    params.require(:team).permit(:name, :grade, :suburb, :logo, :banner_photo)
  end

end
