class ReviewsController < ApplicationController

    def index
        render json: Review.all
    end

    def create
        review = Review.new(review_params)

        if review.save
            render json: review
        end
    end
end
