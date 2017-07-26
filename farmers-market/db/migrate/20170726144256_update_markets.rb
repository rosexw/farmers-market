class UpdateMarkets < ActiveRecord::Migration[5.0]
  def change
    remove_column :markets, :city
    remove_column :markets, :province
    remove_column :markets, :postal_code

    remove_column :markets, :days_open
    remove_column :markets, :time_open

    add_column :markets, :days_open, :string
    add_column :markets, :time_open, :string
  end
end
