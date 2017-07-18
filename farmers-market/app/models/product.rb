class Product < ApplicationRecord
  has_and_belongs_to_many :farmers

  has_many :farmer_markets, through: :farmers
  has_many :markets, through: :farmer_markets
end
