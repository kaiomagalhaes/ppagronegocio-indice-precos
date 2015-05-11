require 'spec_helper'
require 'rails_helper'

RSpec.describe PriceIndexController, type: :controller do

	describe 'Get data' do
		# TODO refactor
	    it 'get data return a valid json' do 
	    	createTestData	

			get "getData", format:"json"

			expect(response.status).to eq(200)

			json_response = JSON.parse(response.body)
			json_expected = getJsonTest

			
			expect(json_response["source"]).to eql(json_expected[:source])
			expect(json_response["months"].length).to eql(json_expected[:months].length)
			expect(json_response["months"].length).to eql(json_expected[:months].length)
			expect(json_response["months"].first["month"]).to eql(json_expected[:months].first[:month])
			expect(json_response["months"].first["products"].first["name"]).to eql(json_expected[:months].first[:products].first[:name])
		end

	end

	def getJsonTest
		{
		  "source": "Ceasa - go",
		  "months": [
		    {
		      "month": Date::MONTHNAMES[Date.today.month],
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

	def createTestData
		category = Category.create(description:"Grocery")
	    product = Product.create("vulgarName":"Tomato", category:category)
	    Price.create(product: product, value: 28)
	end

end
