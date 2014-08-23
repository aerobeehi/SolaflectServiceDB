class AddColumns < ActiveRecord::Migration
  def change
    add_column :boxes, :board_id, :integer  
    add_column :boxes, :servicestatus, :integer, default: 1  
      
    add_column :boards, :servicestatus, :integer, default: 1
  end
end
