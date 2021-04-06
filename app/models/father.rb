class Father < ApplicationRecord
  has_many :sons, dependent: :destroy
  validates :name, presence: true
  validates :age, numericality: {only_integer: true}
end
