class Report < ApplicationRecord
  has_many :tasks

  # Validation for ReportName
  validates_presence_of :report_name
  validates_length_of :report_name, maximum: 255

  
end
