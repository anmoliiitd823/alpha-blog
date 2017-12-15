class Category < ApplicationRecord
	validates :name , presence: true
	validates_uniqueness_of :name 
	validates :name , length: {minimum: 3 , maximum: 25}
	
end
