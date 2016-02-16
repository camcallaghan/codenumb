class PhotosController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
	# a bunch of other code

	def create
    	@place = Place.find(params[:place_id])
    	@place.photos.create(photo_params)
    	redirect_to place_path(@place)
  end

  def show
		@place = Place.find(params[:id])
		@photo = Photo.new
	end

	private
  
  def photo_params
    params.require(:photo).permit(:caption, :picture, :place_id)
  end
end

