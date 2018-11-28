class Category < ApplicationRecord
  has_many :items, dependent: :destroy
  has_one :document, as: :documentable

  accepts_nested_attributes_for :document , reject_if: :all_blank, allow_destroy: true
end
