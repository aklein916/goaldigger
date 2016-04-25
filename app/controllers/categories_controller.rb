class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = category.find(params[:id])
  end

end
