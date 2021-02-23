class CoffeeShop < ApplicationRecord
  belongs_to :owner
  has_many :raw_materials, dependent: :destroy
  has_many :products, dependent: :destroy
  validates_presence_of :name
  #I have to figure how to do the ingredients relationship

end
