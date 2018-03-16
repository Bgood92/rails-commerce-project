class CreateProductGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :product_genres do |t|
      t.references :product, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
