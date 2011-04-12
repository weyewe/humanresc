class RelativesController < ApplicationController
  def create
    @employee = Employee.find(params[:employee_id])
    @relative = @employee.relatives.build(params[:relative])
    if @relative.save
      respond_to do |wants|
        wants.js {  }
      end
    end
  end
end
