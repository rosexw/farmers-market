class FarmerProduct < ApplicationRecord
  belongs_to :farmer
  belongs_to :product
end
