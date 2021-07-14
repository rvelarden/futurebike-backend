class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :bike_id
      t.string :pickup_location
      t.string :dropoff_location
      
      t.timestamps
    end
  end
end
