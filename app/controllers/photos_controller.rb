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

	def edit
		@photo = Photo.find(params[:id])
		if @place.photo != current_photo
    	return render :text => 'Not Allowed', :status => :forbidden
  	end
	end

	def update
		@photo = Photo.find(params[:id])
		if @place.photo != current_photo
    	return render :text => 'Not Allowed', :status => :forbidden
  	end
		@photo.update_attributes(place_params)
		if @photo.valid?
    	redirect_to root_path
  	else
    	render :edit, :status => :unprocessable_entity
  	end
	end

	private
  
  def photo_params
    params.require(:photo).permit(:caption, :picture, :place_id)
  end
end

