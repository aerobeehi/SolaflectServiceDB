class Site < ActiveRecord::Base
        
    has_many :logs, as: :logable
    
    belongs_to :customers
    belongs_to :machines
    
    accepts_nested_attributes_for :logs, :machines, :customers
     
    enum sitestatus: [ :Service, :OK ] 
    
end
