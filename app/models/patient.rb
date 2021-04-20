class Patient < ApplicationRecord
  has_many :appoinments
  has_many :physicans, through: :appoinments
end
