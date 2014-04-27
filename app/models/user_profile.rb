class UserProfile < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :picture, 
		:styles => { medium: "300x300>", thumb: "100x100>", large: "600x600>"}, 
		:default_url => ActionController::Base.helpers.asset_path('missing_:style.png')
	validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"]}
end





# :default_url => '/images/:attachment/missing_:style.png'
