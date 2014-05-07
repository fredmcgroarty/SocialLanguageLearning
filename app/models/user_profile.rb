class UserProfile < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :picture, 
		:styles => { medium: "200x250>", thumb: "100x100>", large: "600x600>"},
		:default_url => "/pictures/:style_missing.png"
  do_not_validate_attachment_file_type :picture
	# validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"]}
end


