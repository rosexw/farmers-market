class CreateFaves < ActiveRecord::Migration[5.0]
  def change
    create_table :faves do |t|
      t.references :user, foreign_key: true
      t.references :market, foreign_key: true
      t.references :farmer, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
