class ReviewsController < ApplicationController

    def create
        beer = Beer.find_by(id: params[:beer_id])
        review = beer.reviews.build(review_params)
        if review.save
            render json: review
        end
    end

    def index
        
        reviews = Beer.find_by(id: params[:beer_id]).reviews
        render json: reviews
    end

    private
    def review_params
        params.require(:review).permit(:content)
    end
end
