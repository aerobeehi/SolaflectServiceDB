class Machine < ActiveRecord::Base
    # Field Validations
    validates :sn, format: { with: /\S{6}/, message: "Please add PV or HS." }
    
    
    
    has_many :logs, as: :logable
    
    has_many :fat_tests
    
    belongs_to :box
    
    has_one :site
    
    accepts_nested_attributes_for :box, :logs
     
    enum servicestatus: [ :Service, :OK ] 

end
