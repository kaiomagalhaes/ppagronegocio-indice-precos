require 'rails_helper'

RSpec.describe Price, type: :model do
  
	it "is valid when value is defined" do 
		price = Price.new(value:"test")
		expect(price).to be_valid
	end

	it "is invalid when value is not defined" do 
		price = Price.new()
		expect(price).to be_invalid
	end

end
