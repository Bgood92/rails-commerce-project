class RenameOrderPriceToUnitPrice < ActiveRecord::Migration[5.1]
  def change
    rename_column :order_details, :order_price, :unit_price
    add_column :order_details, :total_price, :decimal
  end
end
