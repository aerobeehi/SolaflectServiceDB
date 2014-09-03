class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :sn
      t.string :box_id 
      t.date :installdate   
      t.string :location, default: "Shop" 
      t.integer :servicestatus, default: 1    
        
      t.timestamps
    end
  end
end
