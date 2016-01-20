class PhotosController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
	# a bunch of other code
	
	def create
    	@place = Place.find(params[:place_id])
    	@place.photos.create(photo_params)
    	redirect_to place_path(@place)
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
