class Student < ApplicationRecord
  has_many :records
  has_many :teachers, through: :records
end
