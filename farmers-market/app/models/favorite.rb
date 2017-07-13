class Favorite < ApplicationRecord
  belongs_to :market
  belongs_to :farmer
  belongs_to :product
end
