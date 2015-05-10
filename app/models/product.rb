class Product < ActiveRecord::Base
	validates :vulgarName, presence: true
	validates :cientificName, uniqueness: true

	has_many :prices
	belongs_to :category
end
