class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :state, inclusion: { in: ["available", "borrowed"] }
  has_many :users
end
