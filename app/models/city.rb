class City < ActiveRecord::Base
	has_many :posts

	validates :name, :country, presence: true	
end
