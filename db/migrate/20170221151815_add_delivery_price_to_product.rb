class AddDeliveryPriceToProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :delivery_price
    add_monetize :products, :delivery_price, currency: { present: false }
  end
end
