class UsersController < ApplicationController


    def index
        users = User.all
        render json: users
    end
    
    def show
        user_id = params[:id]
          user = User.find(user_id)
          render json: user, include: :transations
    end
    
    def create
        user = User.create(user_params)
        if user.save
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
            # render json: user
        else
         render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end



    private

    def user_params
        params.permit(:name, :username, :creditcardnum, :password)
    end

end
