json.extract! task, :id, :job_id, :status, :image_url, :started_at, :completed_at, :created_at, :updated_at
json.url task_url(task, format: :json)