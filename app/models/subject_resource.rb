class SubjectResource < ApplicationRecord
	belongs_to :subjects,  class_name: "Subject", optional: true
	belongs_to :resources, class_name: "Resource", optional: true
end
