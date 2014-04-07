class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :first_name
      t.string :last_name
      t.float :score
      t.string :token
      t.string :email
      t.string :is_student
      t.string :is_teacher
      t.string :is_management
      t.string :is_admin

      t.timestamps
    end
  end
end
