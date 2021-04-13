class Student < ApplicationRecord
  has_one :record, dependent: :destroy
  validates :name, :age, :phone, :address, presence: true
end
