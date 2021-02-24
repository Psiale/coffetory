class RawMaterial < ApplicationRecord
  belongs_to :coffee_shop
  has_and_belongs_to_many :products
  validates_presence_of :name
  validates_presence_of :total_amount
  validates_presence_of :remaining_amount
end
