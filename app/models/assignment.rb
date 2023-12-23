class Assignment < ApplicationRecord
  belongs_to :task
  belongs_to :account
  has_and_belongs_to_many :teams
  
end
