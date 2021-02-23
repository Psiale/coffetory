class Owner < ApplicationRecord
  has_secure_password
  has_many :coffee_shops
  validates_presence_of :name, :email, :password_digest
end
