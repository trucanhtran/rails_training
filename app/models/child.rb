class Child < ApplicationRecord
  belongs_to :father
  validates :name, length: {in: 2..10}
end
