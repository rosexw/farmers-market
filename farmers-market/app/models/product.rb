class Product < ApplicationRecord
  has_and_belongs_to_many :farmers

  has_many :farmer_markets, through: :farmers
  has_many :markets, through: :farmer_markets

  validates :product_name, presence: true
  validates :product_type, presence: true

  def self.find_product_by_market_name(product_name)
    Product.joins(farmers: [farmer_markets: [ :market]]).distinct
  end

  def new
    @product = Product.new
  end

  def self.all_products_for_market(market_id)
    farmers = FarmerMarket.where(market_id: market_id).pluck(:farmer_id)
    products = FarmersProduct.where(farmer_id: farmers).distinct.pluck(:product_id)
    return Product.where(id: products)
  end
end
