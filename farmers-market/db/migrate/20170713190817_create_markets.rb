class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.date :days_open
      t.datetime :time_open
      t.text :description
      t.string :website_link
      t.string :image
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
