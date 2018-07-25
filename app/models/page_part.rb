class PagePart < ApplicationRecord
	belongs_to :contract
	has_many :layouts
end
