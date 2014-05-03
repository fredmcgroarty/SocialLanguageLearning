class Topic < ActiveRecord::Base
	has_and_belongs_to_many :languages
	has_many :bookings
	has_many :user_reviews

end
