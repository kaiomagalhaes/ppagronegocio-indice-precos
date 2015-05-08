require 'rails_helper'

RSpec.describe Event, type: :model do
 
  it "is valid when description is defined" do 
		event = Event.new(description:"test")
		expect(event).to be_valid
	end

	it "is invalid when description is not defined" do 
		event = Event.new()
		expect(event).to be_invalid
	end

	it "is invalid when already have a event with this description defined" do 
		Event.create(description:"test")
		event = Event.new(description:"test")
		expect(event).to be_invalid
	end

	it "is valid when have prices associated with him" do 
		event = Event.create(description:"test")
		price = Price.create(value:28)
		event.prices = [price]
		expect(price.events.first).to eql(event)
	end

end
