json.extract! file_attachment, :id, :task_id, :file_name, :file_path, :created_at, :updated_at
json.url file_attachment_url(file_attachment, format: :json)
