class AwardTabulatorsController < ApplicationController
    before_action :authenticate_user!

  #Get all Award Tabulator
  def index
    alldata = AwardTabulator.all
    render json: alldata
  end
  
  def create
    award_tabulator = AwardTabulator.new
    award_tabulator.award = params[:award]
    award_tabulator.price = params[:price]
    award_tabulator.state = true
 
    if award_tabulator.save
        render json: {
            status: {code: 200, message: 'Se ha creado correctamente.'}
          }, status: :ok
    else
      render json: award_tabulator.errors, status: :unprocessable_entity
    end

  end

  def test
    render json: {
      message: "This is a private message for #{current_user.email} you should only see if you've got a correct token"
    }
  end

end
