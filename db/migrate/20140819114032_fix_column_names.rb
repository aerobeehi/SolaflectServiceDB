class FixColumnNames < ActiveRecord::Migration
  def change
    change_table :logs do |t|
      t.rename :log_id, :logable_id
      t.rename :log_type, :logable_type
    end 
    
    change_table :boards do |t|
      t.rename :sn, :board_sn
    end
    
    change_table :boxes do |t|
      t.rename :sn, :box_sn
    end
    
    change_table :machines do |t|
      t.rename :sn, :machine_sn
    end
  end  
    
end
