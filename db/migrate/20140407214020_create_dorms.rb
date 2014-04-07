class CreateDorms < ActiveRecord::Migration
  def change
    create_table :dorms do |t|

      t.timestamps
    end
  end
end
