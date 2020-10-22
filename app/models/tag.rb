class Tag < ApplicationRecord
	has_many :gosiptags
	has_many :gosips, through: :gosiptags
end
