class Market < ApplicationRecord
  mount_uploader :image, MarketImageUploader
  has_many :farmer_markets
  geocoded_by :address => '206 Lady Fenyrose Ave', :latitude  => :lat, :longitude => :long

  # reverse_geocoded_by :lat, :long
  # x = reverse_geocoded_by '43.64634718911435', '-79.38721776008606'

  x = Geocoder.coordinates("206 Lady Fenyrose Ave") # can also be an IP address
  puts x

  y = Market.near('206 Lady Fenyrose Ave', 20)
  puts "xxxxxxxxxx"
puts y
           # auto-fetch coordinates

  def self.find_markets_by_product_name(name)
    Market.joins(farmer_markets: [farmer: [farmers_products: [ :product]]]).where(products: {product_name: name.downcase}).distinct
  end

  def self.find_markets_by_name(market_name)
    Market.where('name LIKE ?', "%#{market_name.capitalize}%")

  end
end
