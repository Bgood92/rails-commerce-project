class RenameVideoGameToProduct < ActiveRecord::Migration[5.1]
  def change
    rename_table :video_games, :products
  end
end
