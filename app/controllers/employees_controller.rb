class EmployeesController < ApplicationController
  def index
    @employee = Employee.new
  end
end
