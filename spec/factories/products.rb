require 'ffaker'

FactoryGirl.define do
	
	factory :product do
		vulgarName FFaker::Food.fruit
		cientificName FFaker::Food.fruit
		association :category
			
		factory :product_without_vulgar_name do
			vulgarName nil
		end

	end

end
