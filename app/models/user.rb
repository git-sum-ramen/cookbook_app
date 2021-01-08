class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :recipes
  # validates :name, length: {maximum: 20}
  # validates :password, length: { in: 6..20 }
end
