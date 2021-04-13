class Record < ApplicationRecord
  belongs_to :student
  validates :course, :grade, presence: true
end
