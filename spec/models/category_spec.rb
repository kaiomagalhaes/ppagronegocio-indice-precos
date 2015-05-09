require 'rails_helper'

RSpec.describe Category, type: :model do

	let(:category){
		Category.new(description:"test")
	}
  
	it "is valid when description is defined" do 
		expect(category).to be_valid
	end

	it "is invalid when description is not defined" do 
		category = Category.new()
		expect(category).to be_invalid
	end

	it "is invalid when already have a Category with this description defined" do 
		Category.create(description:"test")
		category = Category.new(description:"test")
		expect(category).to be_invalid
	end

	it "is valid when have products associated with him" do 
		product = Product.create(vulgarName:"test",category:category)
		category.products = [product]
		expect(category.products.first).to eql(product)
	end

end
