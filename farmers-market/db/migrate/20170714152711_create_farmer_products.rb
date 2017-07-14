class CreateFarmerProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :farmer_products do |t|
      t.references :farmer, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
