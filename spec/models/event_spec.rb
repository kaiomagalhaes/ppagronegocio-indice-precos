require 'rails_helper'

RSpec.describe Event, type: :model do

	let(:event) do 
		Event.create(description:"test")
	end

	it "is valid when description is defined" do 
		expect(event).to be_valid
	end

	it "is invalid when description is not defined" do 
		invalid_event = Event.new()
		expect(invalid_event).to be_invalid
	end

	it "is invalid when already have a event with this description defined" do 
		Event.create(description:"test")
		invalid_event = Event.create(description:"test")
		expect(invalid_event).to be_invalid
	end

	it "is valid when have prices associated with him" do 
		price = Price.create(value:28)
		event.prices = [price]
		expect(price.events.first).to eql(event)
	end

end
