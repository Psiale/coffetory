class RawMaterial < ApplicationRecord
  belongs_to :coffee_shop
  validates_presence_of :name
  validates_uniqueness_of :name, { scope: :coffee_shop_id }
  validates_presence_of :total_amount
  validates_presence_of :remaining_amount
end
