class Subject < ApplicationRecord
  has_many :students, dependent: :destroy
end
