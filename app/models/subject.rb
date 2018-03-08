class Subject < ApplicationRecord
	has_many :subject_resources
	has_many :resources, through: :subject_resources
end
