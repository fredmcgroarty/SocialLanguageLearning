class UserProfile < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>", large: "600x600>" }
	validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
