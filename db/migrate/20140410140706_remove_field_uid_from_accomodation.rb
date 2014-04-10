class RemoveFieldUidFromAccomodation < ActiveRecord::Migration
  def change
    remove_column :accomodations, :uid, :integer
  end
end
