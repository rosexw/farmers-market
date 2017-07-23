class FarmerMarket < ApplicationRecord
  belongs_to :market
  belongs_to :farmer

  scope :farmer_markets, -> (id) { where(farmer_id: id) }
end
