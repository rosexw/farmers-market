class AddNameMarkets < ActiveRecord::Migration[5.0]
  def change
    add_column :markets, :name, :string
  end
end
