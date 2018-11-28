class AddColumnToItemPrice < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_prices, :item
  end
end
