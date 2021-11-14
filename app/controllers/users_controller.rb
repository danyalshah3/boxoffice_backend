class UsersController < ApplicationController


    def create
        user = User.create(user_params)
        if user.save
            render json: user

        else
         render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end



    private

    def user_params
        params.permit(:name, :username, :creditcardnum, :password)
    end

end
