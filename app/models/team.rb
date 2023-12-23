class Team < ApplicationRecord
	has_many :team_memberships
	has_many :assignments
	has_and_belongs_to_many :account, through: :assignments


	# Validation for TeamName
	validates_presence_of :team_name
	validates_uniqueness_of :team_name
	validates_length_of :team_name, maximum: 255

end
