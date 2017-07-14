class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|
      t.string :farm_name
      t.string :string
      t.string :email
      t.string :string
      t.string :password_digest
      t.string :string
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :phone_no
      t.string :integer
      t.string :website_link
      t.string :string
      t.string :image
      t.string :string

      t.timestamps
    end
  end
end
