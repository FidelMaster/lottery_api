class LotteriesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_book, only: %i[update show destroy]

  #Get all Award Tabulator
  def index
    alldata = Lottery.all
    render json: alldata
  end

  def create
    
    # Get Active lottery
    activeLottery = Lottery.where(:status => true).first
    # Verify if exist active lottery 
    if activeLottery.present?
        render json: {
            status: { code: 400, message: 'No se ha podido crear el sorteo debido que ya existe uno activo.'}
          }, status: :ok
    end

    lottery = Lottery.new
    lottery.type_lottery_id = params[:type_lottery_id]
    lottery.date_lottery = params[:date_lottery]
    lottery.hour = params[:hour]
    lottery.status = true
 
 
    if lottery.save
        render json: {
            status: {code: 200, message: 'Se ha creado correctamente.'}
          }, status: :ok
    else
      render json: lottery.errors, status: :unprocessable_entity
    end

  end
  
  private 
  def set_lottery
    @book = Lottery.find(params[:id])
  end
end
