class Price < ActiveRecord::Base
	validates :value, presence: true

	has_and_belongs_to_many :events
end
