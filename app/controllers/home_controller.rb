class HomeController < ApplicationController
    
    def getPriceIndex
        render json: PriceService.new.getPriceIndex 
    end

    def index
    end

end
