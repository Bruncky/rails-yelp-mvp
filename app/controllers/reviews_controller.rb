# frozen_string_literal: true

# Reviews Controller
class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review.create(review_params, restaurant_id: @restaurant.id)
    redirect_to restaurant_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
