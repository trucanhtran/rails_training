class Student < ApplicationRecord
  belongs_to :teacher
  has_one :record, dependent: :destroy
  validates :name, presence: true
  validates :age, :phone, numericality: {only_integer: true}
end
