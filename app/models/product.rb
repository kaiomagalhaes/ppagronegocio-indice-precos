class Product < ActiveRecord::Base
	validates :vulgarName, presence: true
	validates :cientificName, uniqueness: true
end
