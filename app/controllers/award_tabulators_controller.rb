class AwardTabulatorsController < ApplicationController
    before_action :authenticate_user!

  #Get all Award Tabulator
  def index
    alldata = AwardTabulator.all
    render json: alldata
  end
  
   def test
    render json: {
      message: "This is a private message for #{current_user.email} you should only see if you've got a correct token"
    }
  end

end
