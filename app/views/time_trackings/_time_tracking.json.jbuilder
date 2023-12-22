json.extract! time_tracking, :id, :task_id, :start_time, :end_time, :created_at, :updated_at
json.url time_tracking_url(time_tracking, format: :json)
