class ChangeTopicNameInUserReviews < ActiveRecord::Migration
  def change
  	rename_column :user_reviews, :topic, :topic_id
  end
end
