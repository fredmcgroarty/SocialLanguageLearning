class AddEcceptedToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :exepted, :boolean
  end
end
