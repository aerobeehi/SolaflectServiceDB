class AddIndicies < ActiveRecord::Migration
  def change
      add_index :boxes, :board_id
      
      add_index :machines, :box_id
      
      add_index :sites, :machine_id
      add_index :sites, :sitename
      
      add_index :logs, :assignedtouser
      add_index :logs, :completedbyuser
      
      add_index :fat_tests, :machine_id
      add_index :fat_tests, :user_id
      
  end
end

