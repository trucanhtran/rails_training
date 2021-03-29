class Product < ApplicationRecord
  belongs_to :category
  validates :name, length: {in: 3..10}
  validates :price, presence: true
  validates :category_id, presence: true
end
