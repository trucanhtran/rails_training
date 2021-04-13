class Teacher < ApplicationRecord
  has_many :students, dependent: :destroy
  validates :name, presence: true
  validates :age, :phone, numericality: {only_integer: true}
end
