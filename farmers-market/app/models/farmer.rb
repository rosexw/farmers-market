class Farmer < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :products

  has_many :farmer_products
  has_many :farmer_markets
  mount_uploader :image, FarmerImageUploader
end
