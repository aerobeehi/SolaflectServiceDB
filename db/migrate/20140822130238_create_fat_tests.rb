class CreateFatTests < ActiveRecord::Migration
  def change
    create_table :fat_tests do |t|
      t.integer :cfgfiles
      t.integer :rs422
        
      t.integer :sensorspacing_up
      t.integer :sensorspacing_az 
      t.integer :sensorspacing_down
      
      t.integer :homing 
      t.string :elrange    
      
      t.string :elrepeat_status
      t.string :elrepeat_1
      t.string :elrepeat_2
      t.string :elrepeat_3  
      t.string :elrepeat_4
      t.string :elrepeat_5
      t.string :elrepeat_6 
        
      t.string :aztrack_status  
      t.string :aztrack_tubecircum
      t.string :aztrack_meas1
      t.string :aztrack_time1
      t.string :aztrack_meas2
      t.string :aztrack_time2        
        
      t.integer :anemometer
        
      t.integer :reworks
    
      t.integer :shipposition
      t.integer :batteryholdersecure  
      t.integer :removeelmotorleads    
        
      t.integer :user_id   
      t.integer :machine_id    
        
        
      t.timestamps
    end
  end
end
