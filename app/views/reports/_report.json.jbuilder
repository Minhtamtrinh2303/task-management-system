json.extract! report, :id, :report_name, :parameters, :task_id, :created_at, :updated_at
json.url report_url(report, format: :json)
