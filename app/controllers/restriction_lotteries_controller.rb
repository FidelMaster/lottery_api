class RestrictionLotteriesController < ApplicationController
    before_action :authenticate_user!

  #Get all Award Tabulator
  def index
    alldata = RestrictionLottery.all
    render json: alldata
  end

end
