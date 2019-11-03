class PhotosController < ApplicationController 
  def create
    @place = Place.find(params[:place_id])
    @place.photo.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def photo_params 
    params.require(:photo).permit(:picture, :caption)
  end 
end 