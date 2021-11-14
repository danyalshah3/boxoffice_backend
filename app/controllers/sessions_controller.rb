class SessionsController < ApplicationController



    def create
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
        else render json: {errors: "User does'nt exist!🤦🏻"}, status: :forbidden
        end
    end
end
