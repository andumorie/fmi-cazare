class CreateDormsCategories < ActiveRecord::Migration
  def change
    create_table :dorms_categories do |t|

      t.timestamps
    end
  end
end
