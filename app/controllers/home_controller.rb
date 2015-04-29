class HomeController < ApplicationController
    
    PriceService priceService
    
    def getPriceIndex
        puts "lolo"
        render JSON: priceService.getPriceIndex 
    end
    
end
