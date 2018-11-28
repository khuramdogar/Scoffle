class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string     :caption
      t.string     :documentable_type
      t.integer    :documentable_id
      t.string     :doc_file_name
      t.string     :doc_content_type
      t.integer    :doc_file_size
      t.datetime   :doc_updated_at
      t.timestamps
    end
  end
end
