class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end
    
    def create
        @booking = @booking.review
        @review = Review.new(review_params)
        @review.booking = @review

        redirect_to hero_path(@review)
    end
    private

    def review_params
        params.require(:review).permit(:content, :rating)
      end
    
end
