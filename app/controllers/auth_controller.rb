class AuthController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if(user && user.authenticate(params[:password]))
        payload = {user_id: user.id}
        token = encode(payload)
        new_hash = {}
        new_hash["user_data"] = user
        new_hash["token"] = token
        render json: new_hash
        # render json: user 
        else
            render json: {error_message: "Incorrect username or password"}
        end
       
    end 
end
