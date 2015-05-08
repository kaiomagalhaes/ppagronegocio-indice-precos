require 'rails_helper'

RSpec.describe Price, type: :model do

	let(:price) do 
		Price.new(value:28)
	end

	it "is valid when value is defined" do 
		expect(price).to be_valid
	end

	it "is invalid when value is not defined" do 
		invalid_price = Price.new()
		expect(invalid_price).to be_invalid
	end

	it "is valid when have events associated with him" do 
		event = Event.create(description:"test")
		price.events = [event]
		expect(price.events.first).to eql(event)
	end

	it "is valid when have products associated with him" do 
		category = Category.create(description:"test")
		product = Product.create(vulgarName:"test",category:category)
		price.products = [product]
		expect(price.products.first).to eql(product)
	end

end
