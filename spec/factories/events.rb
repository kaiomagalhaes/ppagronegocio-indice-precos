FactoryGirl.define do
	
	factory :event do
		description FFaker::Food.fruit

		factory :event_without_description do
			description nil
		end

	end

end
