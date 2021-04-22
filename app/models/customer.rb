class Customer < ApplicationRecord
  has_many :bills
  has_many :products, through: :bills
end
