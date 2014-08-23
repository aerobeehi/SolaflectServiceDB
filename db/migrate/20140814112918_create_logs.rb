class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.text :observation
      t.datetime :observationdate    
      t.text :action
      t.datetime :actiondate    
      t.string :location
      t.integer :personhours
      t.string :assignedtouser
      t.string :completedbyuser    
      t.integer :status, default: 1
      t.integer :category, default: 1    
      t.references :log, polymorphic: true, index: true

      t.timestamps
    end
  end
end
