class MoreFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_dorm, :string
    add_column :users, :last_room, :string
  end
end
