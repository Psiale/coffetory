class RawMaterial < ApplicationRecord
  belongs_to :coffee_shop
  has_and_belongs_to_many :products
end
