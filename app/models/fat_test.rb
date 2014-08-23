class FatTest < ActiveRecord::Base
    # Field Validations
    validates :elrepeat_1, :elrepeat_2, :elrepeat_3, presence: { unless: :value_ok?, message: "Please enter valid serial number." }

  def value_ok?
    ((elrepeat_1.to_i > 65015) or (elrepeat_1.to_i < 64985)) 
    #or (elrepeat_2.to_i > 65015) or (elrepeat_2.to_i < 64985) or (elrepeat_3.to_i > 65015) or (elrepeat_3.to_i < 64985))
  end
    
    
    belongs_to :machine
    
    belongs_to :user
    
end
    