class Employee < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "170x225", :thumb => "30x40" }
  
  has_many :relatives
end
