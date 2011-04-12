class Relative < ActiveRecord::Base
  belongs_to :employee
  
  
  
  
  
  def self.relationship_selections
    relationship_selections_result = {}
    
    RELATIVE_CONSTANT.each do | number ,name  | 
        relationship_selections_result[name] = number
    end
    
    relationship_selections_result
  end
end
