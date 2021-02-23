class Product < ApplicationRecord
  has_and_belongs_to_many :raw_materials
  belongs_to :coffee_shop
end
