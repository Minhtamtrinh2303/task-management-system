class TaskStatus < ApplicationRecord
	has_many :tasks

	# Validation for StatusName
  	validates_presence_of :status_name

end
