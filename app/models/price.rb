class Price < ActiveRecord::Base
	validates :value, presence: true
	has_and_belongs_to_many :events
	has_and_belongs_to_many :products
end
