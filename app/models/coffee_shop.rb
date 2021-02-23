class CoffeeShop < ApplicationRecord
  belongs_to :owner
  has_many :raw_materials
  has_many :products
  #I have to figure how to do the ingredients relationship

end
