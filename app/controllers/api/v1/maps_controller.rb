class Api::V1::MapsController < ApplicationController

    def create
        
        @map = Map.create(position: map_params)
        current_user.maps << @map
    end


    private
    def map_params
        
        params.require(:array)
    end

end
