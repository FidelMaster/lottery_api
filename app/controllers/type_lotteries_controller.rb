class TypeLotteriesController < ApplicationController
    before_action :authenticate_user!

    #Get all lotteries type
    def index
       alldata = TypeLottery.all
       render json: alldata
    end
    
end
