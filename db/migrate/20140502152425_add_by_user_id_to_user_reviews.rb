class AddByUserIdToUserReviews < ActiveRecord::Migration
  def change
    add_column :user_reviews, :by_user_id, :integer
  end
end
