class TeamsController < ApplicationController
  before_action :check_for_team, :only => [:edit]

  def join
    @team = Team.find params[:id]
    @current_user.update_attribute(:team_id, @team.id)
    redirect_to team_path(@team)
  end

  def leave
    @current_user.update_attribute(:team_id, nil)
    redirect_to player_path(@current_user)
  end

  def add_profile
    @team = Team.find params[:id]
  end

  def profile_update
    team = Team.find params[:id]
    if params[:team][:profile].present?
      profile = Cloudinary::Uploader.upload(params[:team][:profile])
      team.profile = profile["public_id"]
    end

    if params[:team][:banner].present?
      banner = Cloudinary::Uploader.upload(params[:team][:banner])
      team.banner = banner["public_id"]
    end

    team.update_attributes(add_profile_params)
    team.save
    if team.save
      session[:user_id] = team.id
      redirect_to root_path
    else 
      render :add_profile
    end 
  end 

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
      redirect_to team_add_profile_path(@team)
    else
      render :new
    end
  end
  
  def update
    team = Team.find params[:id] 
    team.update add_profile_params
    redirect_to team_path(team)
  end
  
  private
  def team_params
    params.require(:team).permit(:email, :password, :password_confirmation)
  end

  def add_profile_params
    params.require(:team).permit(:name, :grade, :suburb, :bio, :logo, :banner_photo)
  end

end
