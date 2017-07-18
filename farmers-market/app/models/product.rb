class Product < ApplicationRecord
  has_and_belongs_to_many :farmers

  has_many :farmer_markets, through: :farmers
  has_many :markets, through: :farmer_markets

  def self.find_product_by_market_name(product_name)
    Product.joins(farmers: [farmer_markets: [ :market]]).distinct
  end
end
