class Record < ApplicationRecord
  belongs_to :student
  validates :course, :grade, numericality: {only_integer: true}
end
