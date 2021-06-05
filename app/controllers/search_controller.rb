class SearchController < ApplicationController
  def new
  end

  def search
    @foods = Foods.where("lower(name) LIKE ?", params: "%#{:keyword}%")
    render @food.js
  end
end
