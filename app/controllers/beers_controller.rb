class BeersController < ApplicationController

    def index
        
        render json: Beer.all, include: [reviews: {only: [:content]}]

    end

    def create
        beer = Beer.new(beer_params)

        if beer.save
            render json: beer, include: [reviews: {only: [:content]}]
        else
            render json: {message: beer.errors.full_messages}
        end
    end

    private

    def beer_params
        params.require(:beer).permit(:name)
    end
        
end
