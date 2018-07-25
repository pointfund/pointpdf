class Contract < ApplicationRecord
	belongs_to :book
	has_many :page_parts
end
