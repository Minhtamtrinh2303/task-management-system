class Project < ApplicationRecord
	has_many :tasks

	# Validation for projectName
	validates_presence_of :project_name
	validates_uniqueness_of :project_name

end
