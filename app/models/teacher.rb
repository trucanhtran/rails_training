class Teacher < ApplicationRecord
  has_many :students, dependent: :destroy
  validates :name, length: {in: 2..20}
  validates :age, numericality: {only_integer: true}
end
