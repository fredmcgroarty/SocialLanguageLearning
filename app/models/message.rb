class Message < ActiveRecord::Base
	belongs_to :conversation
  belongs_to :user

  validates :user_id, presence: true
  validates :body, presence: true, length: {:maximum => 3000, :message => 'Message is a bit long...'}

  delegate  :first_name, to: :user

end
