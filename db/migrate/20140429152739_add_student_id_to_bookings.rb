class AddStudentIdToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :student, index: true
  end
end
