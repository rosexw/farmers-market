class FixTableFarmers < ActiveRecord::Migration[5.0]
  def change
    remove_column :farmers, :string
    remove_column :farmers, :integer
    remove_column :farmers, :phone_no
    add_column :farmers, :phone_no, :integer
  end
end


# create_table "farmers", force: :cascade do |t|
#   t.string   "farm_name"
#   t.string   "string"
#   t.string   "email"
#   t.string   "password_digest"
#   t.string   "first_name"
#   t.string   "last_name"
#   t.string   "phone_no"
#   t.string   "integer"
#   t.string   "website_link"
#   t.string   "image"
#   t.datetime "created_at",      null: false
#   t.datetime "updated_at",      null: false
# end
