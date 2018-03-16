class AddOrderPriceToOrderDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :order_details, :order_price, :decimal
  end
end
