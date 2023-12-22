json.extract! task_status, :id, :status_name, :created_at, :updated_at
json.url task_status_url(task_status, format: :json)
