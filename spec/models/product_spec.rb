require 'rails_helper'

RSpec.describe Product, type: :model do
 
  it "is valid when vulgarName is defined" do 
		product = Product.new(vulgarName:"test")
		expect(product).to be_valid
	end

	it "is invalid when vulgarName is not defined" do 
		product = Product.new()
		expect(product).to be_invalid
	end

	it "is invalid when already have a product with this cientificName defined" do 
		Product.create(cientificName:"test")
		product = Product.new(cientificName:"test")
		expect(product).to be_invalid
	end

	it "is valid when have prices associated with him" do 
		price = Price.create(value:0)
		product = Product.create(vulgarName:"test")
		product.prices = [price]
		expect(product.prices.first).to eql(price)
	end

end
