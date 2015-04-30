require 'test_helper'

class PriceServiceTest < ActiveSupport::TestCase
    
    test 'get data index return valid data without params' do
        
        assert_equal PriceService.new.getPriceIndex , [
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
        ]

    end
    
end