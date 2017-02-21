class ReviewsController < ApplicationController
  before_action :set_product, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.product = @product
    if @review.valid?
      @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating, :product_id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
