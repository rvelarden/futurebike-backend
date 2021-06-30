class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, :include => :bookings
    end 

    def main 
        token = request.headers["Authenticate"]
        user = User.find(decode(token)["user_id"])
        render json: user #send back an error
    end
end
