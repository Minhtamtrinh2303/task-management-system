class Task < ApplicationRecord
  belongs_to :project
  belongs_to :task_status
  
  has_many :reports
  has_many :assignments
  has_many :accounts, through: :assignments
  has_many :file_attachments
  has_many :time_trackings

  # Validation for Title
  validates_presence_of :title

  # Validation for Description
  validates_presence_of :description
  validates_length_of :description, maximum: 1000

  # Validation for DueDate
  validates_presence_of :due_date

  # Validation for Priority

  # Validation for Status

  validates_inclusion_of :status, in: %w(not-started in-progress completed), message: "should be either 'not-started', 'in-progress', or 'completed'"

  # Validation for CompletedDate using validates_timeliness gem


  # Validation for ReminderTime format

end
