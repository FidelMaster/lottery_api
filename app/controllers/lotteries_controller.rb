class LotteriesController < ApplicationController
    before_action :authenticate_user!
  
  #Get all Award Tabulator
  def index
    alldata = Lottery.all
    render json: alldata
  end

end
