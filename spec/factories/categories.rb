FactoryGirl.define do
	
	factory :category do
		description "fruits"

		factory :category_without_description do
			description nil
		end
	end

end
