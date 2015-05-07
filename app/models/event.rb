class Event < ActiveRecord::Base
	validates :description, presence: true, uniqueness: true
end
