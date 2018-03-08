class Comment < ApplicationRecord
	belongs_to :users, class_name: "User", optional: true
	belongs_to :resources, class_name: "Resource", optional: true
end