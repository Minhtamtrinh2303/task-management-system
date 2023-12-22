json.extract! task, :id, :title, :description, :due_date, :priority, :status, :completed_date, :reminder_time, :project_id, :task_status_id, :created_at, :updated_at
json.url task_url(task, format: :json)
