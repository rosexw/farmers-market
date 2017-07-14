class FixTableMarkets < ActiveRecord::Migration[5.0]
  def change
    remove_column :markets, :string
    remove_column :markets, :text
    remove_column :markets, :datetime
    remove_column :markets, :date
    remove_column :markets, :days_open
    remove_column :markets, :description
    remove_column :markets, :time_open

    add_column :markets, :description, :text
    add_column :markets, :time_open, :datetime
    add_column :markets, :days_open, :date
  end
end

# create_table "markets", force: :cascade do |t|
#   t.string   "days_open"
#   t.string   "date"
#   t.string   "time_open"
#   t.string   "datetime"
#   t.string   "description"
#   t.string   "text"
#   t.string   "website_link"
#   t.string   "string"
#   t.string   "image"
#   t.string   "address"
#   t.string   "city"
#   t.string   "province"
#   t.string   "postal_code"
#   t.string   "lat"
#   t.string   "long"
#   t.datetime "created_at",   null: false
#   t.datetime "updated_at",   null: false
# end
