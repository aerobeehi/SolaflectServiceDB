class FixColumnNames < ActiveRecord::Migration
  def change
    change_table :logs do |t|
      t.rename :log_id, :logable_id
      t.rename :log_type, :logable_type
    end 
  end
end
