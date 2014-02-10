class Transaction < ActiveRecord::Base

  def self.import(filepath)
    File.open(filepath, "r").each_with_index do |line, index|
      next if index == 0
      purchaser_name, item_description, item_price, purchase_count, merchant_address, merchant_name = line.strip.split("\t")
      t = self.new(purchaser_name: purchaser_name, item_description: item_description, item_price: item_price, purchase_count: purchase_count, merchant_address: merchant_address, merchant_name: merchant_name)
      t.save
    end
  end

end
