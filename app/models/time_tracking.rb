class TimeTracking < ApplicationRecord
  belongs_to :task

  # Validation for StartTime
  validates_presence_of :start_time

  # Validation for EndTime
  validates_presence_of :end_time
  
end
