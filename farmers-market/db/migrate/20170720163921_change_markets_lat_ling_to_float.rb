class ChangeMarketsLatLingToFloat < ActiveRecord::Migration[5.0]
  def change
    remove_column :markets, :lat
    remove_column :markets, :long

    add_column :markets, :lat, :float
    add_column :markets, :long, :float
  end
end
