require 'test_helper'

class HomeControllerTest < ActionController::TestCase

    test 'get price index return a valid json' do 

		get("getPriceIndex",format:"json")
		assert_response :success

		json_response = JSON.parse(response.body)
		assert [
			{
				date:"01/01/2015",
				priceIndex:1,
				lastPriceIndex:0.8,
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
		], json_response
	end
end
