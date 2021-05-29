class SearchController < ApplicationController
  def new

  end

  def create
    @books = Book.where("name LIKE ?", "%#{params[:aaa]}%")
    render json: @books
  end
end
