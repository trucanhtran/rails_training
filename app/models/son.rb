class Son < ApplicationRecord
  belongs_to :father
  validates :name, :age, :phone, :address, presence: true

end
