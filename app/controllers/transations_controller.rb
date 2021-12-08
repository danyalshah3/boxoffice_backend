class TransationsController < ApplicationController


    def index
        transations = Transation.all
        render json: transations
    end

    def show
        transation = Transation.find(params[:id])
        render json: transation
    end

    def create 
      movie = Movie.find(params[:movie_id])
      user = logged_in_user
      transation = Transation.create!(user_id: user.id, movie_id: movie.id)
        render json: transation
    end


 def update
    transation = Transation.find(params[:id])
    if transation.update(transaion_params)
      render json: transation.to_json
    else
      render json: transation.errors, status: :unprocessable_entity
    end 
  end

  def destroy
    Transation.destroy(params[:id])
  end


    private

    def transation_params
      params.require(:transation).permit(:user_id, :movie_id)
    end


end
