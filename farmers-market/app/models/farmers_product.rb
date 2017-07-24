class FarmersProduct < ApplicationRecord
  belongs_to :farmer
  belongs_to :product

  scope :farmer_products, -> (id) { where(farmer_id: id) }

  def self.get_products_farmer_offers(farmer_id)
    array = []
    all_product_ids = FarmersProduct.where(farmer_id: farmer_id)
    all_product_ids.each do |f_product|
      array.push Product.find_by(id: f_product.product_id)
    end
    return array
  end
end
