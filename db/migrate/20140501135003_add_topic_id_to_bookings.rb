class AddTopicIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :topic_id, :integer
  end
end
