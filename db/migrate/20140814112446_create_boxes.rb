class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :sn

      t.timestamps
    end
  end
end
