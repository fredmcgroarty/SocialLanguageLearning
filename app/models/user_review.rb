class UserReview < ActiveRecord::Base


	belongs_to :for_user, class_name: 'User'
  belongs_to :by_user, class_name: 'User'
  belongs_to :topic

  scope :reviews_for, ->(topic) { where("for_topic = ?", topic) }
  scope :reviews_by,  ->(user) { where("by_user = ?", user) }

end
