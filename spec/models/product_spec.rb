require 'rails_helper'

RSpec.describe Product, type: :model do	

	let(:product) do 
		create(:product)
	end

	it "is valid when vulgarName is defined" do 
		expect(product).to be_valid
	end

	it "is invalid when vulgarName is not defined" do 
		expect(build(:product_without_vulgar_name)).to be_invalid
	end

	it "is invalid when already have a product with this cientificName defined" do 
		expect(Product.new(product.attributes)).to be_invalid
	end

	# 	TODO 
	# it "is valid when have prices associated with him" do 
	# 	price = FactoryGirl.build(:price)
	# 	p price
	# 	product.prices = [price]
	# 	expect(product.prices.first).to eql(price)
	# end

	it "is valid when have category associated with him" do 
		expect(product.category).to be_truthy
	end

end
