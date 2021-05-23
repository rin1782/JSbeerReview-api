class ReviewsController < ApplicationController

    def index

        reviews = Review.all
        render json: reviews
    end

    def create
        review = Review.new(review_params)
        if review.save
            render json: ReviewSerializer.new(review)
        else
            render json: {message: review.errors.full_messages}
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :beer_id)
    end
end
