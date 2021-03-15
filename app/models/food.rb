class Food < ApplicationRecord
  has_rich_text :description
  has_one_attached :file
  has_many_attached :files
end
