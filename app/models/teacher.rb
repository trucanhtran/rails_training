class Teacher < ApplicationRecord
  has_many :records
  has_many :students, through: :records
end
