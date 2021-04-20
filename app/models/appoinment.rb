class Appoinment < ApplicationRecord
  belongs_to :patient
  belongs_to :physican
end
