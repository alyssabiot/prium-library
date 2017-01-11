class BookingsController < ApplicationController
  def index
    @booking = Booking.new()
    @books = Book.where(state: "Borrowed")
  end

  def new
    @booking = Booking.new()
    @users = User.all
    # a booking can only be made for available books
    @books = Book.where(state: "Available")
  end

  def create
    @booking = Booking.new(booking_params)
      @book = Book.find(booking_params[:book_id])
    if @booking.save
      # update status of corresponding book to "borrowed" so it can't be borrowed again
      @book.state = "Borrowed"
      @book.save
      redirect_to new_booking_path
    else
      render :new
    end
  end

  def destroy
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :book_id)
  end
end
