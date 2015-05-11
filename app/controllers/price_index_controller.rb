class PriceIndexController < ApplicationController
	
  # TODO refactor
	def getData
    grouped_prices = Price.all.group_by{|price|
      Date::MONTHNAMES[price.updated_at.month]
    }

    baseJson = getBaseJson
    months = baseJson[:months]
    grouped_prices.each{|month, prices|
      products =  []
      
      prices.each{|price| 

       products << getProductJson(price.product)
        
      }

      month = {
        "month": month,
        "products": products
      }

      months << month

    }

    render json: baseJson
  end

  private
  
  def getBaseJson
        {
          "source": "Ceasa - go",
          "months": []
        }
  end
    
  def getProductJson(product)
      {
        "name": product.vulgarName,
        "category":{
          "description": product.category.description
        },
        "priceIndex": 2,
        "lastPriceIndex": 0.8
      }
  end

end

