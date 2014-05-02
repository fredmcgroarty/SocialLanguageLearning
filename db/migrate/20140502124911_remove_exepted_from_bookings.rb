class RemoveExeptedFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :exepted, :boolean
  end
end
