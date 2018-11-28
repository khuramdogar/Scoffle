class Category < ApplicationRecord
  #associations
  has_many :items, dependent: :destroy
  has_one :document, as: :documentable

  #nested Attributes
  accepts_nested_attributes_for :document , reject_if: :all_blank, allow_destroy: true
end
