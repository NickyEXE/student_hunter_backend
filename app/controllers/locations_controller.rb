class LocationsController < ApplicationController

    def show
        render json: Location.last
    end

    def create
        if params["cookie"] === "friend"
            location = Location.create(lat: params["lat"].round(4), lng: params["lng"].round(4))
        else 
            location = Location.last     
        end
        render json: location
    end

end
