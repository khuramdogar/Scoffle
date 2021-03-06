class Document < ApplicationRecord
  #association
  belongs_to :documentable, polymorphic: true, optional: true

  #paperclip
  has_attached_file :doc
  validates_attachment_content_type :doc, :content_type =>["image/jpg", "image/jpeg", "image/png", "image/gif"]

  #validations
  validates_presence_of :doc
end
