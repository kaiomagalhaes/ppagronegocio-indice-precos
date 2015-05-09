require 'ffaker'

FactoryGirl.define do
	
	factory :category do
		description FFaker::Food.ingredient

		factory :category_without_description do
			description nil
		end
	end

end
