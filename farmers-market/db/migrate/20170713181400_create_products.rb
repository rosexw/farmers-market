class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :product_name
      t.text :product_type
      t.boolean :on_hand
      t.boolean :organic
      t.boolean :non_gmo

      t.timestamps
    end
  end
end
