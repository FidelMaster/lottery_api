class EmployeesController < ApplicationController
    before_action :authenticate_user!

  #Get all Employee
  def index
    alldata = Employee.all
    render json: alldata
  end

  #POST /employee
  def create
  
    @user = User.new(:email => params[:email], :password => params[:password], :admin => false)
  
    if !@user.save
      render json: user.errors, status: :unprocessable_entity
    end

    employee = Employee.new
    employee.user_id = @user.id
    employee.dni = params[:dni]
    employee.full_name = params[:full_name]
    employee.cellphone = params[:cellphone]
 
    if employee.save
    
      render json: {
            status: {code: 200, message: 'Vendedor creado correctamente.'}
          }, status: :ok

    else
      render json: employee.errors, status: :unprocessable_entity
    end
  
  end
 
end
