class RemoveCountryRefFromProvinces < ActiveRecord::Migration[5.1]
  def change
    remove_reference :provinces, :country, foreign_key: true
  end
end
