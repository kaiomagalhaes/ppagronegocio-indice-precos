require 'rails_helper'

RSpec.describe Product, type: :model do	

	let(:category) do 
		Category.create(description:"test")
	end

	let(:product) do 
		Product.create(vulgarName:"test",category:category)
	end

	it "is valid when vulgarName is defined" do 
		expect(product).to be_valid
	end

	it "is invalid when vulgarName is not defined" do 
		product = Product.new(category:category)
		expect(product).to be_invalid
	end

	it "is invalid when already have a product with this cientificName defined" do 
		Product.create(vulgarName:"test",category:category)
		invalid_product = Product.new(cientificName:"test")
		expect(product).to be_invalid
	end

	it "is valid when have prices associated with him" do 
		price = Price.create(value:0)
		product.prices = [price]
		expect(product.prices.first).to eql(price)
	end

	it "is valid when have category associated with him" do 
		expect(product.category).to eql(category)
	end

end
