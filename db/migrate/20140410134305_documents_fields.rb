class DocumentsFields < ActiveRecord::Migration
  def change
    change_table :documents do |t|
      t.string :name
      t.string :url
    end
  end
end
