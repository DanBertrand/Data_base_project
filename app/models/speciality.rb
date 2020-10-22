class Speciality < ApplicationRecord
	has_many :doctorspecilities
	has_many :doctors, through: :doctorspecilities
end
