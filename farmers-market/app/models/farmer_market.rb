class FarmerMarket < ApplicationRecord
  belongs_to :market
  belongs_to :farmer

  scope :farmer_markets, -> (id) { where(farmer_id: id) }

  def self.get_markets_farmer_participates_in(farmer_id)
    array = []
    all_market_ids = FarmerMarket.where(farmer_id: farmer_id)
    all_market_ids.each do |f_market|
      array.push Market.find_by(id: f_market.market_id)
    end
    return array
  end
end
