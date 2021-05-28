class SearchController < ApplicationController
  def new

  end

  def create
    @books = Book.where("name LIKE ?", "%#{params[:keyword]}%")
    respond_to do |format|
      format.js
    end
  end
end
