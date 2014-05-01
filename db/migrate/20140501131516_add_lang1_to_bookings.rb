class AddLang1ToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :lang1, :string
  end
end
