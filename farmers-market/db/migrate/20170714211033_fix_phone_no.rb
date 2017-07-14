class FixPhoneNo < ActiveRecord::Migration[5.0]
  def change
    remove_column :farmers, :phone_no

    add_column :farmers, :phone_no, :string
  end
end
