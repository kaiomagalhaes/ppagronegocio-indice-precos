require 'rails_helper'

RSpec.describe Category, type: :model do

	let(:category){
		build(:category)
	}
  
	it "is valid when description is defined" do 
		expect(category).to be_valid
	end

	it "is invalid when description is not defined" do 
		expect(build(:category_without_description)).to be_invalid
	end

	it "is invalid when already have a Category with this description defined" do 
		create(:category)
		attributes = category.attributes
		category = Category.new(attributes)
		expect(category).to be_invalid
	end

	it "is valid when have products associated with him" do 
		product = build(:product)
		category.products = [product]
		expect(category.products.first).to eql(product)
	end

end
