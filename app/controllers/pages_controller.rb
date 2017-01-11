class PagesController < ApplicationController
  def home
    @books = Book.all
    @available_books = Book.where(state: "Available")
    @users = User.all
    # number of users with at least 1 booking
    @borrowing_users = []
    @users.each do |user|
      if user.bookings.present?
        @borrowing_users << user
      end
    end
  end
end
