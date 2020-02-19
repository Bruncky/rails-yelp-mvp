# frozen_string_literal: true

# Reviews Controller
class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to @restaurant
  end

  private

  def review_params
    # params.require(:review).permit(:content, :rating)
    { content: params[:content], rating: params[:rating], restaurant_id: @restaurant.id }
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
