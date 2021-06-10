class SearchController < ApplicationController
  def new
  end

  def search
    @foods = Food.where("name LIKE ?", "%#{params[:keyword]}%")
    render json: @foods
  end
end
