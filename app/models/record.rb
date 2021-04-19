class Record < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  validates :grade, numericality: {only_integer: true}
end
