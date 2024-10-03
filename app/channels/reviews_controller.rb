class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.car = @car

    if @review.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
