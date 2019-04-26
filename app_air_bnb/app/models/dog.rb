class Dog < ApplicationRecord
	has_many :appointments
	has_many :dogsitters, through: :appointments
end
