class Dogsitter < ApplicationRecord

	has_many :appointments
	has_many :dogs, through: :appointments
end
