class User < ApplicationRecord
  has_secure_password
  has_one_attached :avatar
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :name, presence: true
  validates :phone, length: {is: 9}
  # validates :email, :password, uniqueness: true
  # validates :password, length: { minimum: 6, too_short: "password must be more than 6 characters" }
end
