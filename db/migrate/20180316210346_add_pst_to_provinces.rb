class AddPstToProvinces < ActiveRecord::Migration[5.1]
  def change
    add_column :provinces, :pst, :decimal
  end
end
