class Product < ApplicationRecord
  has_many :bills
  has_many :customers, through: :bills
end
