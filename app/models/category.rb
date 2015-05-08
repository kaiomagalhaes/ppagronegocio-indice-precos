class Category < ActiveRecord::Base
	validates :description, presence: true, uniqueness: true

	has_many :products

end
