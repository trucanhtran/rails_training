class SearchController < ApplicationController
  def index
  end

  def search
    @products = Product.where("LOWER(name) LIKE ?", "%#{params[:keyword]}%")
    respond_to do |format|
      format.js
    end
  end
end
