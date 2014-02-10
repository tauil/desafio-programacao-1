class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :purchaser_name
      t.string :item_description
      t.string :item_price
      t.string :purchase_count
      t.string :merchant_address
      t.string :merchant_name

      t.timestamps
    end
  end
end
