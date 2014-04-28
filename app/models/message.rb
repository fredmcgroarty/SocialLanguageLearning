class Message < ActiveRecord::Base
	belongs_to :conversation
  belongs_to :user

  validates :body, :presence => true, :length => {:maximum => 30000, :message => ' is a bit long...'}
end
