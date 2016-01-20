class Photo < ActiveRecord::Base
	belongs_to :place
	has_many :photos
	
	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true
end
