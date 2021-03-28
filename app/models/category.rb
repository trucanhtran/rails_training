class Category < ApplicationRecord
  # validates :name, presence: true, length: {minimum: 2, maximum: 5}
  validates :name, length: {maximum: 3, too_long: "%{count} is too long"}, uniqueness: true
  validates :user_id, numericality: true
  validates :description, absence: true
end
