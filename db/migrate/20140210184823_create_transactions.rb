class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :purchaser_name
      t.text :item_description
      t.float :item_price
      t.integer :purchase_count
      t.string :merchant_address
      t.string :merchant_name

      t.timestamps
    end
  end
end
