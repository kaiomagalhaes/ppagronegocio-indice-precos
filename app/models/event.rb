class Event < ActiveRecord::Base
	validates :description, presence: true, uniqueness: true

	has_and_belongs_to_many :prices
end
