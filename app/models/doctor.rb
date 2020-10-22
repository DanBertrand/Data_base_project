class Doctor < ApplicationRecord
	belongs_to :city
	has_many :appointments
	has_many :patients, through: :appointments
	has_many :doctorspecilities
	has_many :specialities, through: :doctorspecilities
end
