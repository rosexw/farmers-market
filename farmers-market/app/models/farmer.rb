class Farmer < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :products

  mount_uploader :image, FarmerImageUploader
end
