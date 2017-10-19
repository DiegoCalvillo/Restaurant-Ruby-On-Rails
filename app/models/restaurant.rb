class Restaurant < ApplicationRecord
	has_many :dishes
	validates :name, :description, :address, :phone, presence: true
end
