class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :sn
      t.string :firmware

      t.timestamps
    end    
  end
end
