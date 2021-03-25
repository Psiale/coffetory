class CoffeeShop < ApplicationRecord
  belongs_to :user
  has_many :raw_materials, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name, { scope: :user_id }

  scope :first_business, -> {where(user_id: @current_user).first}
end
