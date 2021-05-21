class BeersController < ApplicationController

    def index
        beers = Beer.all
        render json: beers, :include => [:reviews]
    end

    def create
        beer = Beer.new(beer_params)

        if beer.save
            render json: beer
        end
    end

    private

    def beer_params
        params.require(:beer).permit(:name)
    end
        
end
