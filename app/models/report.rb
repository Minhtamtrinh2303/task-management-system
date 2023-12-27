class Report < ApplicationRecord
  belongs_to :task

  # Validation for ReportName
  validates_presence_of :report_name
  validates_length_of :report_name, maximum: 255

  
end
