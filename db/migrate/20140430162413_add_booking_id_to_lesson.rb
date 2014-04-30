class AddBookingIdToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :booking_id, :integer
  end
end
