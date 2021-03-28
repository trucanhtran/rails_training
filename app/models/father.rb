class Father < ApplicationRecord
  has_many :child
  validates :name, presence: true
  validates :age, numericality: {only_integer: true}
end
