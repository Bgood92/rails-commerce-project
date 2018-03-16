class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :provinces, :tax_rate, :gst
  end
end
