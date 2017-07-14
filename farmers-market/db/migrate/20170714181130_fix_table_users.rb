class FixTableUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :string
  end
end

# create_table "users", force: :cascade do |t|
#   t.string   "email"
#   t.string   "string"
#   t.string   "first_name"
#   t.string   "last_name"
#   t.string   "password_digest"
#   t.datetime "created_at",      null: false
#   t.datetime "updated_at",      null: false
# end
