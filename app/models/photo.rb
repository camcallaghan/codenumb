class Photo < ActiveRecord::Base
	mount_uploaders :picture, PictureUploader
	belongs_to :user
	belongs_to :place
	has_many :photos
end
