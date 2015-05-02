require 'spec_helper'
require 'rails_helper'

RSpec.describe HomeController, type: :controller do

	describe 'Get data' do

	    it 'get price index return a valid json' do 

			get "getPriceIndex",format:"json"
			expect(response.status).to eq(200)

			json_response = JSON.parse(response.body)
			expected_response = [
				{
					"date"=>"01/01/2015",
					"priceIndex"=>1,
					"lastPriceIndex"=>0.8,
					"product"=>{
						"name"=>"Tomato",
						"category"=>{
							"description"=>"Grocery"
						}
						},
						"event"=>{
							"description"=>"Outside the seazonal period"
						}
					}
			]
			
			expect(json_response).to eql(expected_response)
		end

	end

end
