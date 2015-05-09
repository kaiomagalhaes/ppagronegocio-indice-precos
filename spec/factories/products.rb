FactoryGirl.define do
	
	factory :product do
		vulgarName "Blood orange"
		cientificName "Citrus x sinensis"
		association :category

		factory :product_without_vulgar_name do
			vulgarName nil
		end

	end

end
