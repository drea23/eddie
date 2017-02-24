class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all.shuffle[0..3]
  end

  def show
    @category = Category.find(params[:id])
  end
end
