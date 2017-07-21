class FarmersProduct < ApplicationRecord
  belongs_to :farmer
  belongs_to :product

  scope :farmer_products, -> (id) { where(farmer_id: id) }
end
