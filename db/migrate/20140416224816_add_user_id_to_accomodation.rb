class AddUserIdToAccomodation < ActiveRecord::Migration
  def change
    add_column :accomodations, :user_id, :integer
  end
end
