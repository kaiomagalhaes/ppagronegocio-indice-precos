require 'rails_helper'

RSpec.describe Event, type: :model do

	let(:event) do 
		create(:event)
	end

	it "is valid when description is defined" do 
		expect(event).to be_valid
	end

	it "is invalid when description is not defined" do 
		expect(build(:event_without_description)).to be_invalid
	end

	it "is invalid when already have a event with this description defined" do 
		attributes = event.attributes
		expect(Event.new(attributes)).to be_invalid
	end

	it "is valid when have prices associated with him" do 
		price = build(:price)
		event.prices = [price]
		expect(event.prices.first).to eql(price)
	end

end
