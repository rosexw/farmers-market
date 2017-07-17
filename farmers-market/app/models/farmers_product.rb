class FarmersProduct < ApplicationRecord
  belongs_to :farmer
  belongs_to :product
end
