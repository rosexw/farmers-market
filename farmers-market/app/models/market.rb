class Market < ApplicationRecord
  mount_uploader :image, MarketImageUploader
  has_many :farmer_markets
  has_many :farmers, through: :farmer_markets
  geocoded_by :address, :latitude  => :lat, :longitude => :long

  geocoded_by "#{:address}"
  after_validation :geocode
  reverse_geocoded_by :lat, :long

  def self.find_markets_around_me(address, distance)
    @markets_around = Market.near(address, distance)
    @markets_around.each do |m|
      puts "////////"
      puts m.inspect
    end
  end

  def self.find_markets_by_product_name(name)
    @markets = Market.joins(farmer_markets: [farmer: [farmers_products: [ :product]]]).where(products: {product_name: name.downcase}).distinct
  end

  def self.find_markets_by_name(market_name)
    Market.where('name LIKE ?', "%#{market_name.capitalize}%")

  end
end
