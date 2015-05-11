require 'rails_helper'

RSpec.describe Price, type: :model do

	let(:price) do 
		build(:price)
	end

	it "is valid when value is defined" do 
		expect(price).to be_valid
	end

	it "is invalid when value is not defined" do 
		expect(build(:price_without_value)).to be_invalid
	end

	it "is valid when have events associated with him" do 
		event = build(:event)
		price.events = [event]
		expect(price.events.first).to eql(event)
	end

	it "is valid when have products associated with him" do 
		expect(price.product).to be_valid
	end

end
