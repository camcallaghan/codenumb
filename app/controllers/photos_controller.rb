class PhotosController < ApplicationController
	def Create
		@photo = Photo.new
	end
end
