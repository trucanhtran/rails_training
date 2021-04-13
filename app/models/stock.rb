class Stock < ApplicationRecord
  has_many :seeds, dependent: :destroy
end
