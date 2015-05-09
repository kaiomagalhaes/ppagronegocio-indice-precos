require 'spec_helper'
require 'rails_helper'

RSpec.describe PriceIndexController, type: :controller do

	describe 'Get data' do
	    it 'get data return a valid json' do 
	    	category = Category.create(description:"Grocery")
	    	product = Product.create("vulgarName":"Tomato", category:category)
	    	price = Price.new(product: product)
	    	p category






			# get "getData",format:"json"
			# expect(response.status).to eq(200)

			# json_response = JSON.parse(response.body)
			# expected_response = getJsonTest
			
			# expect(json_response).to eql(expected_response)
		end

	end

	def getJsonTest
		{
		  "source":"Ceasa - go",
		  "months": [
		    {
		      "month": "Jan",
		      "products": [
		        {
		          "name": "Tomato",
		          "category": {
		            "description": "Grocery"
		          },
		          "priceIndex": 2,
		          "lastPriceIndex": 0.8
		        }
		      ]
		    }
		  ]
		}
	end


end
