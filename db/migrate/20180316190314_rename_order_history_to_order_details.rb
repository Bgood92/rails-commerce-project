class RenameOrderHistoryToOrderDetails < ActiveRecord::Migration[5.1]
  def change
    rename_table :order_histories, :order_details
  end
end
