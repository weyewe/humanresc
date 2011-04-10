class Employee < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "225x300", :thumb => "30x40" }
end
