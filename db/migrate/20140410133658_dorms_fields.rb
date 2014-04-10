class DormsFields < ActiveRecord::Migration
  def change
    change_table :dorms do |t|
      t.string :name
      
    end
  end
end
