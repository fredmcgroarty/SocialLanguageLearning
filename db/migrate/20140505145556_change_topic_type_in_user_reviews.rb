class ChangeTopicTypeInUserReviews < ActiveRecord::Migration
  def self.up
    change_column :user_reviews, :topic, :integer
  end
 
  def self.down
    change_column :user_reviews, :topic, :string
  end
end
