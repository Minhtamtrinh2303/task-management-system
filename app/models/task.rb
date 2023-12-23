class Task < ApplicationRecord
  belongs_to :project
  belongs_to :task_status

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
  validates_presence_of :priority
  validates_inclusion_of :priority, in: %w(low medium high), message: "should be either 'low', 'medium', or 'high'"

  # Validation for Status
  validates_presence_of :status
  validates_inclusion_of :status, in: %w(not-started in-progress completed), message: "should be either 'not-started', 'in-progress', or 'completed'"

  # Validation for CompletedDate using validates_timeliness gem


  # Validation for ReminderTime format



end
