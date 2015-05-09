class PriceIndexController < ApplicationController
	
	def getData

		render json: [
            {
                date:"01/01/2015",
                priceIndex: 1,
                lastPriceIndex: 0.8,
                product:{
                    name:"Tomato",
                    category:{
                        description:"Grocery"
                    }
                },
                event:{
                    description:"Outside the seazonal period"
                }
            }
        ]
	end


    
    

end
