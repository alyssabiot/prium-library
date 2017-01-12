class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  has_one :booking
  has_one :user, through: :booking

  include AASM
  aasm do
    state :available, :initial => true
    state :borrowed

    event :borrow do
      transitions :from => :available, :to => :borrowed
    end

    event :return do
      transitions :from => :borrowed, :to => :available
    end
  end
end
