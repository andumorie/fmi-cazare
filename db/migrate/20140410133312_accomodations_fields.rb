class AccomodationsFields < ActiveRecord::Migration
  def change
    change_table :accomodations do |t|
      t.integer :uid
      t.string :last_dorm
      t.string :last_room
      t.string :is_continuity
      t.string :is_social
      t.string :dorm_pref_1
      t.string :dorm_pref_2
      t.string :dorm_pref_3
      t.string :roommate_pref
    end
  end
end
