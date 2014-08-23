class Customer < ActiveRecord::Base
            
    has_many :logs, as: :logable
    
    has_one :site
    
end
