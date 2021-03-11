class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.new(book_parameter)
    @book.save

    redirect_to book_home_path
  end

  def destroy
    Book.find_by(id: params[:id]).destroy

    redirect_to book_home_path
  end

  private
  def book_parameter
    params.require(:book).permit(:name, :author_id)
  end
end
