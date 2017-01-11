class BooksController < ApplicationController
  before_action :set_book, only: [ :show, :edit, :update, :destroy ]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new()
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :abstract, :state)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end