class Employer < ApplicationRecord
  has_many :employees, dependent: :destroy
end
