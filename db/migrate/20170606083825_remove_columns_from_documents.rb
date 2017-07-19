class RemoveColumnsFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :doc_updated_at, :datetime
    remove_column :documents, :doc_file_size, :integer
    remove_column :documents, :doc_content_type, :string
    remove_column :documents, :doc_file_name, :string
    remove_column :documents, :title, :string
  end
end
