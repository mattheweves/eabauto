class Listing < ActiveRecord::Base
	has_many :manufacturers
	belongs_to :user

end
