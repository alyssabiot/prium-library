class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :state, inclusion: { in: ["Available", "Borrowed"] }
  has_one :booking
  has_one :user, through: :booking
end
