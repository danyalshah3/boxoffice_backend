class TransationsController < ApplicationController



    def index
        transations = Transation.all
        render json: transations
    end


    # def show
    #     transation = Transation.find(params[id])
    #     render json: transation
    # end



    def create 
        transation = logged_in_user.create!(transation_params)
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
    transation.destroy(params[:id])
  end


    private

    def transation_params
  params.permit(:user_id, :movie_id)

    end
end
