class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :bike_id
      t.string :pickup_time
      t.string :dropoff_time
      
      t.timestamps
    end
  end
end
