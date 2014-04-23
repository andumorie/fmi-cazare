class Remove2ColumnsFromDocument < ActiveRecord::Migration
  def change
    remove_column :documents, :content_type, :string
    remove_column :documents, :data, :string
  end
end
