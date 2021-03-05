class ItemController < ApplicationController
  def index
    @list_items = ListItem.all
    @products = Product.all
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def delete
  end
end
