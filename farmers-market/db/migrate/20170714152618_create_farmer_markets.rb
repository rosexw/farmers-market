class CreateFarmerMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :farmer_markets do |t|
      t.references :market, foreign_key: true
      t.references :farmer, foreign_key: true

      t.timestamps
    end
  end
end
