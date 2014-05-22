class AddStateToAccomodations < ActiveRecord::Migration
  def change
    add_column :accomodations, :state, :string
  end
end
