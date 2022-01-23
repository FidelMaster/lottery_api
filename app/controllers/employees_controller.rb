class EmployeesController < ApplicationController
    before_action :authenticate_user!

  #Get all Employee
  def index
    alldata = Employee.all
    render json: alldata
  end

end
