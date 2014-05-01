class AddLang2ToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :lang2, :string
  end
end
