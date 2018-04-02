class RenameProductIdInProductGenre < ActiveRecord::Migration[5.1]
  def change
    rename_column :product_genres, :products_id, :product_id
  end
end
