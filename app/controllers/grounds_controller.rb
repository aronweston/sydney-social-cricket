class GroundsController < ApplicationController
  before_action :check_for_admin, :only => [:new, :edit]
  
  def index
    @grounds = Ground.all
  end
  
  def new
    @ground = Ground.new
  end

  def edit
    @ground = Ground.find params[:id]
  end 

  def show
    @ground = Ground.find params[:id]
  end 

  def create
    @ground = Ground.new ground_params
    if @ground.save
      redirect_to grounds_path
    else
      render :new
    end
  end

  def update
    ground = Ground.find params[:id]
    ground.update ground_params
    redirect_to grounds_path
  end 

  def destroy
    ground = Ground.find params[:id]
    ground.destroy
    redirect_to grounds_path
  end

  private
  def ground_params
    params.require(:ground).permit(:name, :address, :image, :google_map)
  end


end
