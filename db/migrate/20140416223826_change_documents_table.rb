class ChangeDocumentsTable < ActiveRecord::Migration
  def change
    remove_column :documents, :url, :string
    add_column :documents, :content_type, :string
    add_column :documents, :data, :string
    add_column :documents, :accomodation_id, :integer
    add_index  :documents, :accomodation_id
  end
end
