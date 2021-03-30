class Student < ApplicationRecord
  belongs_to :teacher
  validates :name, length: {in: 2..10}
end
