class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :bike_id
      t.datetime :pickup_time
      t.datetime :dropoff_time
      
      t.timestamps
    end
  end
end
