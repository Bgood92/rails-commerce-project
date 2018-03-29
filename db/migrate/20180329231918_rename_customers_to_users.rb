class RenameCustomersToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :users, :users
  end
end
