class Physican < ApplicationRecord
  has_many :appoinments
  has_many :patients, through: :appoinments
end
