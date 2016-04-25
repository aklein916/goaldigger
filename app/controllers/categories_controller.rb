class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = cateogory.find(params[:id])
  end   

end
