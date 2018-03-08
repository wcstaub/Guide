class Resource < ApplicationRecord
	serialize :comment_ids
	has_many :comments
	has_many :subject_resources
	has_many :subjects, through: :subject_resources
end
