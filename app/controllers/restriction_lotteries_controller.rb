class RestrictionLotteriesController < ApplicationController
    before_action :authenticate_user!

  #Get all Award Tabulator
  def index
    alldata = RestrictionLottery.all
    render json: alldata
  end

  def create
    restriction_lottery = RestrictionLottery.new
    restriction_lottery.number = params[:number]
    restriction_lottery.max_valua = params[:max_valua]
    restriction_lottery.lottery_id = params[:lottery_id]
    restriction_lottery.state = true
 
    if restriction_lottery.save
        render json: {
            status: {code: 200, message: 'Se ha creado correctamente.'}
          }, status: :ok
    else
      render json: restriction_lottery.errors, status: :unprocessable_entity
    end

  end

end
