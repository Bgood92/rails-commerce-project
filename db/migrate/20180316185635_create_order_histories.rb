class CreateOrderHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :order_histories do |t|
      t.references :order, foreign_key: true
      t.references :products, foreign_key: true

      t.timestamps
    end
  end
end
