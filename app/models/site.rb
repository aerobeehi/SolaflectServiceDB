class Site < ActiveRecord::Base
        
    has_many :logs, as: :logable
    
    belongs_to :customer
    
    belongs_to :machine
    
    accepts_nested_attributes_for :logs, :machine, :customer
     
    enum sitestatus: [ :Service, :OK ] 
    
end
