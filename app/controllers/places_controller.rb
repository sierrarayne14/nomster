class PlacesController < ApplicationController

  def index
    @places = Place.paginate(page: params[:page], per_page: 10)
  end

  def new
    @place = Place.new 
  end

  def create
    Place.create(plae_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:name, :description, :address)
  end

end 