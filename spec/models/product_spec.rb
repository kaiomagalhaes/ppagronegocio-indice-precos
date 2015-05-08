require 'rails_helper'

RSpec.describe Product, type: :model do	

	let(:category) do 
		Category.create(description:"test")
	end

	it "is valid when vulgarName is defined" do 
		product = Product.new(vulgarName:"test")
		product.category = category
		expect(product).to be_valid
	end

	it "is invalid when vulgarName is not defined" do 
		product = Product.new(category:category)
		expect(product).to be_invalid
	end

	it "is invalid when already have a product with this cientificName defined" do 
		Product.create(cientificName:"test",category:category)
		product = Product.new(cientificName:"test")
		expect(product).to be_invalid
	end

	it "is valid when have prices associated with him" do 
		price = Price.create(value:0)
		product = Product.create(vulgarName:"test",category:category)
		product.prices = [price]
		expect(product.prices.first).to eql(price)
	end

	it "is valid when have category associated with him" do 
		product = Product.create(vulgarName:"test",category:category)
		expect(product.category).to eql(category)
	end

end
