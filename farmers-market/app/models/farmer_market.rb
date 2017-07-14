class FarmerMarket < ApplicationRecord
  belongs_to :market
  belongs_to :farmer
end
