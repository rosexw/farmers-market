class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|
      t.string :email
      t.string :farm_name
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :phone_num
      t.string :website_link
      t.string :image

      t.timestamps
    end
  end
end
