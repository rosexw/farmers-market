class Market < ApplicationRecord
  mount_uploader :image, MarketImageUploader
  has_many :farmer_markets

  def self.find_markets_by_product_name(name)
    Market.joins(farmer_markets: [farmer: [farmers_products: [ :product]]]).where(products: {product_name: name.downcase}).distinct
  end
end
