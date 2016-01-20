class Photo < ActiveRecord::Base
	belongs_to :user
	has_one :place_id
end
