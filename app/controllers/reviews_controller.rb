class ReviewsController < ApplicationController

    def index

        reviews = Review.all
        render json: reviews
    end

    

    def create
        beer = Beer.find_by(id: params[:beer_id])
        review = beer.reviews.build(review_params)
        if review.save
            render json: review
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :beer_id)
    end
end
