class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :latitude
      t.string :longitude
      t.integer :sitestatus
      t.string :machine_id    
      t.string :sitename    

      t.timestamps
    end
  end
end
