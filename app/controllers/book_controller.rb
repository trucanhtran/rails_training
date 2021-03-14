class BookController < ApplicationController
  before_action :book_detail, only: [:edit, :show, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  def create
    @book = Book.new(book_parameter)
    @book.save

    redirect_to book_home_path
  end

  def destroy
    @book.destroy

    redirect_to book_home_path
  end

  def edit
  end

  def update
    @book.update(book_parameter)

    redirect_to book_show_path(@book.id)
  end


  private
  def book_detail
    @book = Book.find_by(id: params[:id])
  end

  def book_parameter
    params.require(:book).permit(:name, :author_id, :image)
  end
end
