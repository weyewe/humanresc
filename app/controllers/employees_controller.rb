class EmployeesController < ApplicationController
  def index
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new( params[:employee])
    @employee.save
    
    redirect_to employee_url(@employee)
  end
  
  def show
    @employee = Employee.find_by_id( params[:id])
  end
end
