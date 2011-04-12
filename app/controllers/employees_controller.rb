class EmployeesController < ApplicationController
  def index
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new( params[:employee])
    @employee.save
    sleep 7
    
    redirect_to employee_url(@employee)
  end
  
  def show
    @employee = Employee.find_by_id( params[:id])
    @new_relative = @employee.relatives.new
    @relatives = @employee.relatives
  end
end
