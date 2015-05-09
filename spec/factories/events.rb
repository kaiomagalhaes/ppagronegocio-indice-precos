FactoryGirl.define do
	
	factory :event do
		description "Rain of canibal plants"

		factory :event_without_description do
			description nil
		end

	end

end
