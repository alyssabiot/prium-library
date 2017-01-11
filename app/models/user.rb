class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  has_many :bookings
  has_many :books, through: :bookings
end
