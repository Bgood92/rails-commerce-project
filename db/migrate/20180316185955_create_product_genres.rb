class CreateProductGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :product_genres do |t|
      t.references :products, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
