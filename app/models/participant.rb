class Participant < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user
  has_many :messages, :through => :conversation

  delegate :subject, :to => :conversation
  delegate :users, :to => :conversation
end