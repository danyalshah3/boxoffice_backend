class UsersController < ApplicationController


    def create
        user = User.create(user_params)
        if user.save
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
            # render json: user
        else
         render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def destroy
        User.destroy(params[:id])
      end



    private

    def user_params
        params.permit(:name, :username, :creditcardnum, :password)
    end

end
