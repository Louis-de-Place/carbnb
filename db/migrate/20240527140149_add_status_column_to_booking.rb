class AddStatusColumnToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :status, :boolean
  end
end
