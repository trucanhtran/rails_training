class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, length: {in: 3..10}
end
