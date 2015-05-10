class Price < ActiveRecord::Base
	validates :value, presence: true, numericality: true
	has_and_belongs_to_many :events
	belongs_to :product
end
