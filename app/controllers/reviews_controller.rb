class ReviewsController < ApplicationController

    def index
        reviews = Beer.find_by(id: params[:beer_id]).reviews
        render json: reviews
    end

    def create
        review = Review.new(review_params)

        if review.save
            render json: review
        end
    end

    # def create
    #     donut = Donut.find_by(id: params[:donut_id])
    #     review = donut.reviews.build(review_params)
    #     if review.save
    #         render json: review
    #     end
    # end

    private

    def review_params
        params.require(:review).permit(:content, :beer_id)
    end
end
