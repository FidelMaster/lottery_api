class EmployeesController < ApplicationController
    before_action :authenticate_user!
end
