class UserProfile < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :picture, :styles => { medium: "200x250>", thumb: "100x100>", large: "600x600>"},
    storage: :s3, bucket: 'polyglt',  s3_credentials: {
    access_key_id: Rails.application.secrets.s3_access_key,
    secret_access_key: Rails.application.secrets.s3_secret_key
    },
		:default_url => "/pictures/:style_missing.png"

  do_not_validate_attachment_file_type :picture
	# validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"]}
end


