class Log < ActiveRecord::Base
  #Validations
  validates :observation, presence: { message: "Please complete observation field before submitting log." }    
  validates :action, presence: { if: :log_closed?, message: "Please complete action field before closing log." }
    
  def log_closed?
    status == "closed"
  end
    
    
  #Associations    
  belongs_to :logable, polymorphic: true
    
  belongs_to :user    
    
    
  #Field Formatting    
  enum status: [ :closed, :open ] 
    
  enum category: [ :Electrical, :Mechanical, :Other ]    
    
end
