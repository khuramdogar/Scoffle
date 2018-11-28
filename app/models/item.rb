class Item < ApplicationRecord
  #associations
  has_many :item_prices, dependent: :destroy
  has_one :document, as: :documentable
  belongs_to :category

  #nested attributes
  accepts_nested_attributes_for :item_prices, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :document , reject_if: :all_blank, allow_destroy: true
end
