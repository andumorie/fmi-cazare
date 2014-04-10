class ExtraUserFields < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :date_birth
      t.string :place_birth
      t.string :father_first_name
      t.string :mother_first_name
      t.string :ic_serie
      t.string :ic_number
      t.string :address
      t.string :cnp
      t.string :specialization
      t.string :year
    end
  end
end
