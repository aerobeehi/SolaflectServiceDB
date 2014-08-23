class Customer < ActiveRecord::Base
            
    has_many :logs, as: :logable
    
    has_one :site
    
    accepts_nested_attributes_for :site, :machine
    
end
