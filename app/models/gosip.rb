class Gosip < ApplicationRecord
	belongs_to :user
	has_many :gosiptags
	has_many :tags, through: :gosiptags
end
