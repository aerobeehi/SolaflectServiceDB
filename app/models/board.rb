class Board < ActiveRecord::Base
    # Field Validations
     validates :sn, format: { with: /\d{5}/, message: "Please enter valid serial number." }
     validates :firmware, format: { with: /\d{1,2}\.\d{1,2}\.\d{1,2}/, message: "Please enter valid firmware version." }

    
    # Logs
    has_many :logs, as: :logable
    
    # Boxes
    has_one :box
    
    # Status
    enum servicestatus: [ :Service, :OK ]  

end
