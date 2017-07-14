class FixTableFarmerDescription < ActiveRecord::Migration[5.0]
  def change
    add_column :farmers, :description, :text
  end
end
