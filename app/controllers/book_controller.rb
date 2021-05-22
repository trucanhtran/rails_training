class BookController < ApplicationController
  def index
  end

  def new
    @book = Book.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @book = Book.new(book_params)
    @book.save
    respond_to do |format|
      format.js
    end
  end

  private
  def book_params
    params.require(:book).permit(:name, :des)
  end
end
