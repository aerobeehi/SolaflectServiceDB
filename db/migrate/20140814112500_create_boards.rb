class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :sn
      t.string :firmware
      t.integer :servicestatus, default: 1
      t.integer :servicecategory

      t.timestamps
    end    
  end
end
