class Comment < ApplicationRecord
	belongs_to :users
	belongs_to :resources
end
