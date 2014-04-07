class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|

      t.timestamps
    end
  end
end
