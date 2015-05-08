class Product < ActiveRecord::Base
	validates :vulgarName, presence: true
	validates :cientificName, uniqueness: true
	has_and_belongs_to_many :prices
end
