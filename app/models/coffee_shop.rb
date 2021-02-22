class CoffeeShop < ApplicationRecord
  belongs_to :owner
  has_many :raw_materials
end
