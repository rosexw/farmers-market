class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :days_open
      t.string :date
      t.string :time_open
      t.string :datetime
      t.string :description
      t.string :text
      t.string :website_link
      t.string :string
      t.string :image
      t.string :string
      t.string :address
      t.string :string
      t.string :city
      t.string :string
      t.string :province
      t.string :string
      t.string :postal_code
      t.string :string
      t.string :lat
      t.string :string
      t.string :long

      t.timestamps
    end
  end
end
