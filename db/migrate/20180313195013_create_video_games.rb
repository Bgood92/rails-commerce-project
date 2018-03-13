class CreateVideoGames < ActiveRecord::Migration[5.1]
  def change
    create_table :video_games do |t|
      t.string :name
      t.decimal :price
      t.integer :stock_quantity
      t.string :img_url
      t.text :description

      t.timestamps
    end
  end
end
