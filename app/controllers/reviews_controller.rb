class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = review.new(review_params)
    @review.save
    redirect_to product_path(@review.product)
  end

  private

  def artist_params
    params.require(:review).permit(:title, :content, :rating, :product_id)
  end
end
