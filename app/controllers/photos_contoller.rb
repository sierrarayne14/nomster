class PhotosController < ApplicationController 
  def photo_params 
    params.require(:picture).permit(:caption)
  end 
end 