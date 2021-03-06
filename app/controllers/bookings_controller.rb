class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @booking  = Booking.new
  end

  def new
    @booking = Booking.new()
    @users = User.all
    # a booking can only be made for available books
    @books = Book.available
  end

  def create
    @booking = Booking.new(booking_params)
    @book = Book.find(booking_params[:book_id])
    if @booking.save
      # update status of corresponding book to "borrowed" so it can't be borrowed again
      @book.borrow!
      redirect_to new_booking_path
      flash[:notice] = "#{@book.title} is now borrowed by #{@book.user.first_name}!"
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:booking][:id])
    @book = @booking.book
    # update status of corresponding book to "available" so it can be borrowed again
    @book.return!
    @booking.delete
    redirect_to bookings_path
    flash[:notice] = "#{@book.title} is now available!"
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :book_id)
  end
end
