class CreateItemPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :item_prices do |t|
      t.integer :price
      t.string :quantity
      t.string :size

      t.timestamps
    end
  end
end
