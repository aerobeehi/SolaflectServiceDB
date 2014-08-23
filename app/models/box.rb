class Box < ActiveRecord::Base
    # Field Validations
    validates :sn, format: { with: /\d{1,2}\-\d{3}/, message: "Please enter valid serial number." }
    
    has_many :logs, as: :logable
    
    belongs_to :board
    
    has_one :machine
    
    accepts_nested_attributes_for :board, :logs
    
    # Status
    enum servicestatus: [ :Service, :OK ] 
    
end
