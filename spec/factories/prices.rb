FactoryGirl.define do

	factory :price do
		value 25

		factory :price_without_value do
			value nil
		end

	end

end
