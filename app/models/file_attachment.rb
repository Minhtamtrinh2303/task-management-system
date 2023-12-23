class FileAttachment < ApplicationRecord
  belongs_to :task

  validates_presence_of :file_name
  validates_presence_of :file_path

end
