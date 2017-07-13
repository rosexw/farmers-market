class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :provice
      t.string :postal_code
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
