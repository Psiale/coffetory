class CoffeeShop < ApplicationRecord
  belongs_to :owner
  has_many :raw_materials, dependent: :destroy
  has_many :products, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name, { scope: :owner_id }
end
