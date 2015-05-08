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

	it "is valid when have events associated with him" do 
		price = Price.create(value:28)
		event = Event.create(description:"test")
		price.events = [event]
		expect(price.events.first).to eql(event)
	end

end
