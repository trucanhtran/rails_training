class Record < ApplicationRecord
  belongs_to :student
  validates :course, :grade, numericality: {on;y_integer: true}
end
