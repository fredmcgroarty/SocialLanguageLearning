class ChangeTopicId < ActiveRecord::Migration
  def change
   
    change_column :user_reviews, :topic_id, 'integer USING CAST(topic_id AS integer)'
  end
end
