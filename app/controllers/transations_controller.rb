class TransationsController < ApplicationController



    def index
        transations = Transation.all
        render json: transations
    end


    def show
        transation = Transation.find(params[id])
        render json: transation
    end



    def create 
  transations = Transations.create(transation_params)
  if transations.valid?
  render json: transations

  else
    render json: {errors: transations.errors.full_messages.to_sentence}, status: :unprocessable_entity
  end
 end

 def update
    transaction = Transaction.find(params[:id])
    if transaction.update(transaction_params)
      render json: transaction.to_json
    else
      render json: transaction.errors, status: :unprocessable_entity
    end 
  end

  def destroy
    transaction.destroy(params[:id])
  end


    private

    def transation_params
  params.permit(:user_id, :movie_id)

    end
end
