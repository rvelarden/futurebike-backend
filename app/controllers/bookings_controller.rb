class BookingsController < ApplicationController

    def index
            bookings = Booking.all 
            render json: bookings, :include => :bike
    
    end

    def create
        booking = Booking.create(booking_params)
        render json: booking, :include => :bike
        
    end 

    def destroy
        booking = Booking.find(params[:id])
        Booking.destroy(params[:id])
        render json: booking, :include => :bike
    end 

    def update
        # byebug
        booking = Booking.find_by(id: params[:id]) #this is an object
        booking.update(booking_params)
        render json: booking, :include => :bike
    end
    

    def booking_params
        params.require(:booking).permit(:bike_id, :pickup_time, :dropoff_time)
    end 

end
