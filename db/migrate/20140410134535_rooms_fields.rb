class RoomsFields < ActiveRecord::Migration
  def change
    change_table :rooms do |t|
      t.string :number
    end
  end
end
