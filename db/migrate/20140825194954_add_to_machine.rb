class AddToMachine < ActiveRecord::Migration
  def change
    
    add_column :machines, :installdate, :datetime
    
  end
end
